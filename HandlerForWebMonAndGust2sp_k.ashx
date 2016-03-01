<%@ WebHandler Language="C#" Class="HandlerForWebMonAndGust2sp_k" %>

using System;
using System.Web;
using System.Configuration;
using System.IO;
using System.Text;
using System.Security.Cryptography;
using System.Collections.Generic;

public class HandlerForWebMonAndGust2sp_k : IHttpHandler 
{
    
    public void ProcessRequest (HttpContext context) 
    {
        string LMI_PREREQUEST = context.Request.Form["LMI_PREREQUEST"];
        //если это форма предварительного запроса
        if ("1" == LMI_PREREQUEST)
        {
            context.Response.ContentType = "text/plain";
            
            if ((context.Request.Form["LMI_PAYMENT_AMOUNT"] !=
                ConfigurationManager.AppSettings["LMI_PAYMENT_AMOUNT"]) ||
                (context.Request.Form["LMI_PAYEE_PURSE"] !=
                ConfigurationManager.AppSettings["LMI_PAYEE_PURSE"]))
            {
                context.Response.Write("NO");
                return;
            }
            else
                context.Response.Write("YES");
                return;     
        }
        else
        {
            String body = String.Empty;
            
            //получаем хешключ
            String LMI_HASH = context.Request["LMI_HASH"];
            
            String s = 
                context.Request["LMI_PAYEE_PURSE"] + 
                context.Request["LMI_PAYMENT_AMOUNT"] + 
                context.Request["LMI_PAYMENT_NO"] + 
                context.Request["LMI_MODE"] + 
                context.Request["LMI_SYS_INVS_NO"] + 
                context.Request["LMI_SYS_TRANS_NO"] + 
                context.Request["LMI_SYS_TRANS_DATE"] + 
                ConfigurationManager.AppSettings["SECRET_KEY"] +
                context.Request["LMI_PAYER_PURSE"] + 
                context.Request["LMI_PAYER_wm"];

            String hash = GetHashString(s);

            if (String.Compare(LMI_HASH, hash, true) != 0)
                body = "<BR /><BR /><span style=\"color:red;\">" +
                    "ПОПЫТКА ВЗЛОМА! КУРСЫ НЕ ОПРАВЛЯТЬ!!!" +
                        "</span><BR /><BR /><BR />";

            List<String> customerDetails = new List<string>();
            try
            {
                customerDetails.Add(context.Request.Form["CUST_SURNAME_"]);
                customerDetails.Add(context.Request.Form["CUST_NAME_"]);
                customerDetails.Add(context.Request.Form["CUST_PATRONYMIC_"]);
                customerDetails.Add(context.Request.Form["COUNTRY_"]);
                customerDetails.Add(context.Request.Form["STATE_"]);
                customerDetails.Add(context.Request.Form["SITY_"]);
                customerDetails.Add(context.Request.Form["ADDRESS_"]);
                customerDetails.Add(context.Request.Form["INDEX"]);
                customerDetails.Add(context.Request.Form["PHONE"]);
                customerDetails.Add(context.Request.Form["EMAIL"]);
                customerDetails.Add(context.Request.Form["FILE_NAME"]);
            }
            catch
            {
                try
                {
                    string fileName = HttpContext.Current.Server.MapPath("~/App_Data/Txt/") +
                        (context.Request.Form["FILE_NAME"]).ToString() + ".txt";

                    customerDetails.Clear();
                    customerDetails.AddRange(File.ReadAllLines(fileName));
                    customerDetails.RemoveAt(0);
                }
                catch
                {
                    customerDetails.Add("Данные потеряны - не пришли от мерчанта и не удалось прочитать текстовый файл клиента");
                }
            }

            body += MakeBody(customerDetails, context);

            Mail.SendMail(context.Request.Form["EMAIL"], 
                "support@winforms.ru", "Заказ курса по c#", body);
        }
    }

    string MakeBody(List<String> customerDetails, HttpContext context)
    {
        String body = String.Empty;
        
        if (customerDetails.Count > 9)
            body = customerDetails[0] + " " + customerDetails[1] + " " + customerDetails[2] +
                "<br /> заказал и оплатил по системе WebMoney курс <br />" +
                "\"Профессиональная подготовка разработчика по языку c# на платформе .NET. Часть 1 Windows Forms\"" +
                "<br /><br /><br />" +
                
                
                "-------------------------------------" +
                "<br /><br />" +
                
                "<strong>Реквизиты:</strong> <br />" +
                "Фамилия: " + customerDetails[0] + "<br />" +
                "Имя: " + customerDetails[1] + "<br />" +
                "Отчество: " + customerDetails[2] + "<br />" +
                "Страна: " + customerDetails[3] + "<br />" +
                "Область: " + customerDetails[4] + "<br />" +
                "Город: " + customerDetails[5] + "<br />" +
                "Адрес: " + customerDetails[6] + "<br />" +
                "Почтовый индекс: " + customerDetails[7] + "<br />" +
                "Телефон: " + customerDetails[8] + "<br />" +
                "E-mail: " + customerDetails[9] + "<br /><br />" +
                
                "-------------------------------------<br /><br />" +
                
                "ip:" + customerDetails[10] + "<br />" +
                "Имя файла с данными клиента: " + context.Server.MapPath(
                "~/App_Data/Txt/") + customerDetails[10] + ".txt <br />";

        return body;
    }
    
    static string GetHashString(string input)
    {
        byte[] byteValue = Encoding.UTF8.GetBytes(input);
        MD5CryptoServiceProvider cryptoServiceProvider =
            new MD5CryptoServiceProvider();
        byte[] byteHash = cryptoServiceProvider.ComputeHash(byteValue);

        string result = string.Empty;

        foreach (byte b in byteHash)
            result += string.Format("{0:x2}", b);

        return result.ToUpper();
    }
    
    public bool IsReusable {
        get {
            return false;
        }
    }

}