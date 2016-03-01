using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Page.Validate();
        if (!Page.IsValid)
            return;

        String surname = TextBox1.Text.Trim();
        String name = TextBox2.Text.Trim();
        String patron = TextBox3.Text.Trim();

        String country = country4.Value.Trim();
        String state = TextBox5.Text.Trim();
        String sity = TextBox6.Text.Trim();

        String address = TextBox7.Text.Trim();
        String index = TextBox8.Text.Trim();
        String phone = TextBox9.Text.Trim();
        String email = TextBox10.Text.Trim();


        Label1.Text = CUST_SURNAME_.Value = surname;
        Label2.Text = CUST_NAME_.Value = name;
        Label3.Text = CUST_PATRONYMIC_.Value = patron;

        Label4.Text = COUNTRY_.Value = country;
        Label5.Text = STATE_.Value = state;
        Label6.Text = SITY_.Value = sity;


        Label7.Text = ADDRESS_.Value = address;
        Label8.Text = INDEX.Value = index;
        Label9.Text = PHONE.Value = phone;
        Label10.Text = EMAIL.Value = email;

        FILE_NAME.Value = Request.UserHostAddress;

        this.Panel1.Visible = false;
        this.Panel2.Visible = true;

        List<string> customerDetails = new List<string>();
        customerDetails.Add("Часть 1. Windows Forms");
        customerDetails.Add(surname);
        customerDetails.Add(name);
        customerDetails.Add(patron);
        customerDetails.Add(country);
        customerDetails.Add(sity);
        customerDetails.Add(address);
        customerDetails.Add(index);
        customerDetails.Add(phone);
        customerDetails.Add(email);
        customerDetails.Add(FILE_NAME.Value);
        customerDetails.Add("Партнер: " + partner_txbx.Text.Trim());

        string fileName = Server.MapPath("~/App_Data/Txt/") + FILE_NAME.Value + ".txt";

        System.IO.File.WriteAllLines(fileName, customerDetails.ToArray());
    }
}
