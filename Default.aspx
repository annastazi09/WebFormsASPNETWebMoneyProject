<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Покупка курса по c#</title>
    <link href="Style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style2
        {
            width: 238px;
        }
        .style3
        {
            width: 285px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel runat="server" ID="Panel1">
    <div align="center">
    
        <div style="width:600px; border:solid 1px #777;">
            <div style="margin:8px 0px 8px 0px; width:580px; padding:0px; border:solid 1px #222">
                <span style="font-size:13px;">
                Вы оформляете заказ (через систему WebMoney) <br /> на приобретение DVD-диска с курсом 
                <br /><br />
                    <span style="font-size:15px; color:Black; font-weight:bold;">
                    &quot;Профессиональная подготовка разработчика по языку 
                    <span style="color:#086eb5;">C#</span> 
                    на платформе <span style="color:#45839e;">.NET</span>.
                     <span style="color:#e73030;">Часть 1 Windows Forms</span>&quot;
                    </span>
                </span>
                
                <br /><br />
                
                <img src="Images/smallDisc.jpg" />
                <br />
                <span>Заполните, пожалуйста, внимательно ниже приведенную форму.</span>
                <br />
                <span>Перед оправкой данных еще раз проверьте правильность введенной информации.</span>
            </div>
        </div>
        
        <br /><br />
        
       <div style="width:600px; border:solid 1px #777;">    
    <div style="margin:8px 0px 8px 0px; width:580px; padding:0px; border:solid 1px Green;">
    <table width="580px">
    <tr style="background-color: #f6f6f6;">
        <td colspan="2" align="center">
            <strong style="color:#4aa84e; font-size:14px;"><br />Контактная информация, на которую будет выслан диск</strong><br /><br />
        </td>
    </tr>
    </table>
    </div>
    <br /> <div style="margin-bottom:8px; width:580px; border:solid 1px #111;">
    <table cellspacing="14px;" style="width: 566px">
        <tr>
            <td colspan="2" align="right" class="style3" style="color:Silver;">Для правильного заполнения данных, не отключайте в браузере JavaScript</td>
        </tr>
        <tr>    
            <td align="right" class="style3"><strong>Фамилия:</strong></td>
            <td class="style2">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="[а-яА-Яa-zA-Z ]{1,30}" Font-Size="10px">Используйте 
                только буквы русского (английского) алфавита</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" Font-Size="10px">Укажите фамилию</asp:RequiredFieldValidator>
                <asp:TextBox CssClass="txtbx" ID="TextBox1" runat="server" Width="265px" 
                    MaxLength="30"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td align="right" class="style3">
                <strong>Имя:</strong></td>
            <td class="style2">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="[а-яА-Яa-zA-Z ]{1,30}" Font-Size="10px">Используйте только буквы 
                            русского (английского) алфавита</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" Font-Size="10px">Укажите полное имя</asp:RequiredFieldValidator>

                <asp:TextBox CssClass="txtbx" ID="TextBox2" runat="server" Height="16px" 
                    Width="265px" MaxLength="30"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td align="right" class="style3"><strong>Отчество:</strong></td>
            <td class="style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="[а-яА-Яa-zA-Z ]{1,30}" Font-Size="10px">Используйте 
                только буквы русского (английского) алфавита</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" Font-Size="10px">Укажите отчество</asp:RequiredFieldValidator>

                <asp:TextBox CssClass="txtbx" ID="TextBox3" runat="server" Height="16px" 
                    Width="265px" MaxLength="30"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td align="right" class="style3">&nbsp;<br /></td>
            <td class="style2"></td>
            
        </tr>
        <tr>
            <td align="right" class="style3"><strong>Страна:</strong></td>
            <td align="left" class="style2">
                <select name="country4" id="country4" runat="server" style="width:auto;height:auto">
                    <option value="0" selected="selected">Выберите страну</option>
                    <option value='Абхазия'>Абхазия</option>
                    <option value='Австралия'>Австралия</option>
                    <option value='Австрия'>Австрия</option>
                    <option value='Азербайджан'>Азербайджан</option>
                    <option value='Албания'>Албания</option>
                    <option value='Алжир'>Алжир</option>
                    <option value='Андорра'>Андорра</option>
                    <option value='Антильские острова'>Антильские острова</option>
                    <option value='Аргентина'>Аргентина</option>
                    <option value='Армения'>Армения</option>
                    <option value='Аруба'>Аруба</option>
                    <option value='Афганистан'>Афганистан</option>
                    <option value='Багамские острова'>Багамские острова</option>
                    <option value='Бали'>Бали</option>
                    <option value='Бангладеш'>Бангладеш</option>
                    <option value='Барбадос'>Барбадос</option>
                    <option value='Бахрейн'>Бахрейн</option>
                    <option value='Белиз'>Белиз</option>
                    <option value='Белоруссия'>Белоруссия</option>
                    <option value='Бельгия'>Бельгия</option>
                    <option value='Бенин'>Бенин</option>
                    <option value='Бермудские острова'>Бермудские острова</option>
                    <option value='Болгария'>Болгария</option>
                    <option value='Боливия'>Боливия</option>
                    <option value='Босния и Герцеговина'>Босния и Герцеговина</option>
                    <option value='Бразилия'>Бразилия</option>
                    <option value='Бруней'>Бруней</option>
                    <option value='Бутан'>Бутан</option>
                    <option value='Ватикан'>Ватикан</option>
                    <option value='Великобритания'>Великобритания</option>
                    <option value='Венгрия'>Венгрия</option>
                    <option value='Венесуэла'>Венесуэла</option>
                    <option value='Восточный Тимор'>Восточный Тимор</option>
                    <option value='Вьетнам'>Вьетнам</option>
                    <option value='Галапагосские острова'>Галапагосские острова</option>
                    <option value='Гватемала'>Гватемала</option>
                    <option value='Германия'>Германия</option>
                    <option value='Греция'>Греция</option>
                    <option value='Грузия'>Грузия</option>
                    <option value='Дания'>Дания</option>
                    <option value='Доминика'>Доминика</option>
                    <option value='Доминикана'>Доминикана</option>
                    <option value='Доминиканская р-ка'>Доминиканская рка</option>
                    <option value='Египет'>Египет</option>
                    <option value='Замбия'>Замбия</option>
                    <option value='Зимбабве'>Зимбабве</option>
                    <option value='Израиль'>Израиль</option>
                    <option value='Индия'>Индия</option>
                    <option value='Индонезия'>Индонезия</option>
                    <option value='Иордания'>Иордания</option>
                    <option value='Ирак'>Ирак</option>
                    <option value='Иран'>Иран</option>
                    <option value='Ирландия'>Ирландия</option>
                    <option value='Исландия'>Исландия</option>
                    <option value='Испания'>Испания</option>
                    <option value='Италия'>Италия</option>
                    <option value='Йемен'>Йемен</option>
                    <option value='Казахстан'>Казахстан</option>
                    <option value='Камбоджа'>Камбоджа</option>
                    <option value='Камерун'>Камерун</option>
                    <option value='Канада'>Канада</option>
                    <option value='Канарские Острова'>Канарские Острова</option>
                    <option value='Карибские острова'>Карибские острова</option>
                    <option value='Катар'>Катар</option>
                    <option value='Кения'>Кения</option>
                    <option value='Кипр'>Кипр</option>
                    <option value='Китай'>Китай</option>
                    <option value='Колумбия'>Колумбия</option>
                    <option value='Конго'>Конго</option>
                    <option value='Корея'>Корея</option>
                    <option value='Коста-Рик'>Коста Рика</option>
                    <option value='Кот-дИвуар'>Кот дИвуар</option>
                    <option value='Куба'>Куба</option>
                    <option value='Кувейт'>Кувейт</option>
                    <option value='Кыргызстан'>Кыргызстан</option>
                    <option value='Лаос'>Лаос</option>
                    <option value='Латвия'>Латвия</option>
                    <option value='Лесото'>Лесото</option>
                    <option value='Ливан'>Ливан</option>
                    <option value='Ливия'>Ливия</option>
                    <option value='Литва'>Литва</option>
                    <option value='Лихтенштейн'>Лихтенштейн</option>
                    <option value='Люксембург'>Люксембург</option>
                    <option value='Маврикий'>Маврикий</option>
                    <option value='Мавритания'>Мавритания</option>
                    <option value='Мадагаскар'>Мадагаскар</option>
                    <option value='Македония'>Македония</option>
                    <option value='Малайзия'>Малайзия</option>
                    <option value='Мали'>Мали</option>
                    <option value='Мальдивы'>Мальдивы</option>
                    <option value='Мальта'>Мальта</option>
                    <option value='Марокко'>Марокко</option>
                    <option value='Мексика'>Мексика</option>
                    <option value='Мозамбик'>Мозамбик</option>
                    <option value='Молдавия'>Молдавия</option>
                    <option value='Монако'>Монако</option>
                    <option value='Монголия'>Монголия</option>
                    <option value='Мьянма'>Мьянма</option>
                    <option value='Непал'>Непал</option>
                    <option value='Нигерия'>Нигерия</option>
                    <option value='Нидерланды'>Нидерланды</option>
                    <option value='Новая Зеландия'>Новая Зеландия</option>
                    <option value='Норвегия'>Норвегия</option>
                    <option value='ОАЭ'>ОАЭ</option>
                    <option value='Оман'>Оман</option>
                    <option value='Пакистан'>Пакистан</option>
                    <option value='Перу'>Перу</option>
                    <option value='Польша'>Польша</option>
                    <option value='Португалия'>Португалия</option>
                    <option value='Россия'>Россия</option>
                    <option value='Румыния'>Румыния</option>
                    <option value='США'>США</option>
                    <option value='Сан-Марино'>Сан Марино</option>
                    <option value='Саудовская Аравия'>Саудовская Аравия</option>
                    <option value='Сейшельские Острова'>Сейшельские Острова</option>
                    <option value='Сенегал'>Сенегал</option>
                    <option value='Сингапур'>Сингапур</option>
                    <option value='Сирия'>Сирия</option>
                    <option value='Словакия'>Словакия</option>
                    <option value='Словения'>Словения</option>
                    <option value='Сьерра-Леоне'>Сьерра Леоне</option>
                    <option value='Таджикистан'>Таджикистан</option>
                    <option value='Таиланд'>Таиланд</option>
                    <option value='Танзания'>Танзания</option>
                    <option value='Того'>Того</option>
                    <option value='Тунис'>Тунис</option>
                    <option value='Туркменистан'>Туркменистан</option>
                    <option value='Турция'>Турция</option>
                    <option value='Узбекистан'>Узбекистан</option>
                    <option value='Украина'>Украина</option>
                    <option value='Филиппины'>Филиппины</option>
                    <option value='Финляндия'>Финляндия</option>
                    <option value='Франция'>Франция</option>
                    <option value='Французская Полинезия'>Французская Полинезия</option>
                    <option value='Хорватия'>Хорватия</option>
                    <option value='Чад'>Чад</option>
                    <option value='Черногория'>Черногория</option>
                    <option value='Чехия'>Чехия</option>
                    <option value='Чили'>Чили</option>
                    <option value='Швейцария'>Швейцария</option>
                    <option value='Швеция'>Швеция</option>
                    <option value='Шри-Ланка'>Шри Ланка</option>
                    <option value='Эквадор'>Эквадор</option>
                    <option value='Эстония'>Эстония</option>
                    <option value='Эфиопия'>Эфиопия</option>
                    <option value='ЮАР'>ЮАР</option>
                    <option value='Югославия'>Югославия</option>
                    <option value='Ямайка'>Ямайка</option>
                    <option value='Япония'>Япония</option>
                  </select>    
            </td>
            
        </tr>
        <tr>
            <td align="right" class="style3"><strong>Область (край):</strong></td>
            <td class="style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="[а-яА-Яa-zA-Z ]{1,30}" Font-Size="10px">Используйте 
                только буквы русского (английского) алфавита</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" Font-Size="10px">Укажите область (край)</asp:RequiredFieldValidator>

                <asp:TextBox ID="TextBox5" runat="server" CssClass="txtbx" 
                    Height="16px" Width="265px" MaxLength="30"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td align="right" class="style3"><strong>Город (если есть - и район):</strong></td>
            <td class="style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox6" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="[а-яА-Яa-zA-Z- ,]{1,100}" Font-Size="10px">Допустимые 
                символы: буквы русского (английского) алфавита, пробел, &#39;,&#39;</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox6" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" Font-Size="10px">Укажите город</asp:RequiredFieldValidator>

                <asp:TextBox CssClass="txtbx" ID="TextBox6" runat="server" Width="265px" 
                    MaxLength="100" Height="16px"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td align="right" class="style3">&nbsp;<br /></td>
            <td class="style2"></td>
            
        </tr>
        <tr>
            <td align="right" valign="top" class="style3"><strong>Адрес (улица, дом, квартира):</strong></td>
            <td class="style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox7" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="[а-яА-Яa-zA-Z.,:;0-9 ]{1,100}" Font-Size="10px">Используйте 
                только буквы русского (английского) алфавита, цифры и знаки препинания. Макс. 
                длина 100 знаков</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox7" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" Font-Size="10px">Укажите адрес</asp:RequiredFieldValidator>

                <asp:TextBox CssClass="txtbx" ID="TextBox7" runat="server" Width="265px" 
                    MaxLength="75" Height="57px" TextMode="MultiLine"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td align="right" class="style3"><strong>Почтовый индекс:</strong></td>
            <td class="style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="TextBox8" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="[0-9]{4,7}" Font-Size="10px">Используйте только цифры</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox8" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" Font-Size="10px">Укажите почтовый индекс</asp:RequiredFieldValidator>

                <asp:TextBox CssClass="txtbx" ID="TextBox8" runat="server" 
                    Width="265px" Height="16px" MaxLength="7"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td align="right" class="style3"><strong>Телефон:</strong></td>
            <td class="style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="TextBox9" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="[0-9 -]{4,30}" 
                    Font-Size="10px"> только цифры, пробелы и дефис</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox9" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" Font-Size="10px">Укажите контактный 
                телефон</asp:RequiredFieldValidator>

                <asp:TextBox CssClass="txtbx" ID="TextBox9" runat="server" Width="265px" 
                    MaxLength="30"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td align="right" class="style3"><strong>E-mail:</strong></td>
            <td class="style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                    ControlToValidate="TextBox10" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    Font-Size="10px">Впишите реальный електронный адрес</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox10" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" Font-Size="10px">Укажите E-mail</asp:RequiredFieldValidator>

                <asp:TextBox CssClass="txtbx" ID="TextBox10" runat="server" Width="265px" 
                    MaxLength="35"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td align="right" class="style3"><strong>Партнёр</strong> <span style="font-size:10px;">(заполняется только по рекомендации 
                партнера)</span></td>
            <td class="style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" 
                    ControlToValidate="partner_txbx" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="[a-zA-Zа-яА-Я0-9_.@]{0,10}" 
                    Font-Size="10px">Впишите имя партнёра</asp:RegularExpressionValidator>

                <asp:TextBox CssClass="txtbx" ID="partner_txbx" runat="server" Width="265px" 
                    MaxLength="10"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td align="right" class="style3">&nbsp;<br /></td>
            <td class="style2"></td>
            
        </tr>
        <tr>
            <td align="center" colspan="2">
                Для продолжения нажмите на кнопку &quot;Продолжить&quot;<br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Продолжить" 
                    Width="182px" onclick="Button1_Click" /></td>
        </tr>
    </table>
    </div>
    </div>
        
    </div>
    </asp:Panel>
    
        <asp:Panel ID="Panel2" runat="server" Visible="false">
    
        
<div align="center">
<div align="center">
    <div style="width:600px; border:solid 1px #777;">
        <div style="margin:8px 0px 8px 0px; width:580px; padding:0px; border:solid 1px #222;">
        <span style="font-size:13px;">
        
            Вы оформляете заказ (через систему WebMoney)<br />
            на приобретение DVD-диска с курсом<br /><br />
            
            <span style="font-size:15px; color: Black; font-weight:bold;">
                &quot;Профессиональная подготовка разработчика по языку<br /> 
                <span style="color:#086eb5">C#</span> 
                на платформе <span style="color:#45839e;">.NET</span>. 
                <span style="color:#e73030;">Часть1 Windows Forms</span>&quot;
            </span>
        </span>
        
        <br /><br />
        
        <img src="Images/smallDisc.jpg" />

            <p><font color="#086eb5">
                Перед переходом в сервис WebMoney, ещё раз проверьте Вашу контактную информацию 
                - на неё будет выслана посылка!
                </font>
            </p>
            <br />
                <table width="500px" style="border:solid 1px #a1a1a1; background-color: #fefedc;" cellspacing="6px">
                    <tr>
                        <td align="right"><strong>Фамилия:</strong></td><td align="left"><asp:Label ID="Label1" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right"><strong>Имя:</strong></td><td align="left"><asp:Label ID="Label2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right"><strong>Отчество:</strong></td><td align="left"><asp:Label ID="Label3" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right"><strong>Страна:</strong></td><td align="left"><asp:Label ID="Label4" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right"><strong>Область (край):</strong></td><td align="left"><asp:Label ID="Label5" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right"><strong>Город:</strong></td><td align="left"><asp:Label ID="Label6" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right"><strong>Адрес:</strong></td><td align="left"><asp:Label ID="Label7" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right"><strong>Почтовый индекс:</strong></td><td align="left"><asp:Label ID="Label8" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right"><strong>Телефон:</strong></td><td align="left"><asp:Label ID="Label9" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="right"><strong>E-mail:</strong></td><td align="left"><asp:Label ID="Label10" runat="server"></asp:Label></td>
                    </tr>
                </table>
        <br />
        <br />
        
        <p>            
            <asp:HiddenField ID="LMI_PAYEE_PURSE" runat="server" Value="<%$ AppSettings:LMI_PAYEE_PURSE %>" />
            <asp:HiddenField ID="LMI_PAYMENT_AMOUNT" runat="server" Value="<%$ AppSettings:LMI_PAYMENT_AMOUNT %>" />
            <asp:HiddenField ID="LMI_PAYMENT_DESC" runat="server" Value="<%$ AppSettings:LMI_PAYMENT_DESC %>" />
            <asp:HiddenField ID="LMI_PAYMENT_NO" runat="server" Value="1" />
            <asp:HiddenField ID="LMI_SIM_MODE" Visible="false" runat="server" Value="<%$ AppSettings:LMI_SIM_MODE %>" />

            <asp:HiddenField ID="CUST_SURNAME_" runat="server" />
            <asp:HiddenField ID="CUST_NAME_" runat="server" />
            <asp:HiddenField ID="CUST_PATRONYMIC_" runat="server" />
            
            <asp:HiddenField ID="COUNTRY_" runat="server" />
            <asp:HiddenField ID="STATE_" runat="server" />
            <asp:HiddenField ID="SITY_" runat="server" />
            
            <asp:HiddenField ID="ADDRESS_" runat="server" />
            <asp:HiddenField ID="INDEX" runat="server" />
            <asp:HiddenField ID="PHONE" runat="server" />
            <asp:HiddenField ID="EMAIL" runat="server" />
            
            <asp:HiddenField ID="FILE_NAME" runat="server" />
       
            <asp:HiddenField ID="LMI_RESULT_URL" runat="server" Visible="False" />
            <asp:HiddenField ID="LMI_SUCCESS_URL" runat="server" Value="<%$ AppSettings:LMI_SUCCESS_URL %>" Visible="False" />
            <asp:HiddenField ID="LMI_SUCCESS_METHOD" runat="server" Value="<%$ AppSettings:LMI_SUCCESS_METHOD %>" Visible="False" />
            <asp:HiddenField ID="LMI_FAIL_URL" runat="server" Value="<%$ AppSettings:LMI_FAIL_URL %>" Visible="False" />
            <asp:HiddenField ID="LMI_FAIL_METHOD" runat="server" Value="<%$ AppSettings:LMI_FAIL_METHOD %>" Visible="False" />
            <asp:HiddenField ID="LMI_PAYMENT_CREDITDAYS" runat="server" Value="<%$ AppSettings:LMI_PAYMENT_CREDITDAYS %>" Visible="False" />	        
       </p>
        
        <span>Если необходимо изменить данные вернитесь на <a href="Default.aspx">предыдущую</a> страницу.<br /></span>
	    <br />
	    <br />
        <span>Если всё верно нажмите на кнопку</span>
        <br />
        
 
 <br />
            <asp:Button ID="Button2" runat="server" Height="26px" style="margin-left: 0px" 
                Text="Перейти в сервис WebMoney" Width="221px"
                PostBackUrl="https://merchant.webmoney.ru/lmi/payment.asp" />
 <br />
 <br />
      </div>
</div>
</div>
</div>

    
    </asp:Panel>
    </form>
</body>
</html>
