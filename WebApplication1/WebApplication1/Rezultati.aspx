<%@ Page Title="Внеси Резултати" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rezultati.aspx.cs" Inherits="WebApplication1.Rezultati" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
      
#accordion {
    list-style: none;
    padding: 0 0 0 0;
    width: 810px;
  
}
#accordion div {
    display:block;
    font-weight:normal;
    margin: 0px;
    cursor: pointer;
    padding: 0 0 0 0px;
    list-style: circle;
    -moz-border-radius: 10px;
    -webkit-border-radius: 10px;
    border-radius: 0px;
    
}
#accordion ul {
    list-style: none;
    padding: 0 0 0 0;
}
#accordion ul{
    display: none;
}
#accordion ul li {
    font-weight: normal;
    cursor: auto;
    background-color: #fff;
    padding: 0 0 0 7px;
}
#accordion a {
    text-decoration: none;
}
#accordion a:hover {
    text-decoration: underline;
    background:#E0F8F7;
}

#accordion h3:hover {
    text-decoration: underline;
    background:#F5D0A9;
}

#accordion h3 {
    text-decoration: underline;
    background:#F3E2A9;
}

#accordion .style {
    
    background:#F8ECE0;
    
}    


    

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="accordion">

<h3>Внеси резултат за соодветната категорија на Спорт</h3>
<div class="style">


        <table class="style1" style="width: 89%">
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    Тука внесете ги Резултатите кои се постигнати<br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label1" runat="server" Text="Тип на Резултат" 
                        style="font-weight: 700"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList_Rezultat_tip" runat="server" Height="30px" 
                        Width="230px">
                        <asp:ListItem Value="">----Избери Резултат----</asp:ListItem>
                        <asp:ListItem>Прво Место</asp:ListItem>
                        <asp:ListItem>Второ Место</asp:ListItem>
                        <asp:ListItem>Трето Место</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList_Rezultat_tip" ErrorMessage="Задолжително поле"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label2" runat="server" Text="Категорија" 
                        style="font-weight: 700"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListRezultat_Kategorija" runat="server" Height="30px" Width="230px">
                        <asp:ListItem Value="">----Избери Категорија----</asp:ListItem>
                        <asp:ListItem>Кошарка</asp:ListItem>
                        <asp:ListItem>Ракомет</asp:ListItem>
                        <asp:ListItem>Фудбал</asp:ListItem>
                        <asp:ListItem>Одбојка</asp:ListItem>
                        <asp:ListItem>Гимнастика</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DropDownListRezultat_Kategorija" 
                        ErrorMessage="Задолжително поле"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label3" runat="server" Text="Датум" style="font-weight: 700"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Datum" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="TextBox_Datum_CalendarExtender" runat="server" 
                        Enabled="True" Format="MMMM d, yyyy" TargetControlID="TextBox_Datum">
                    </asp:CalendarExtender>
                    <asp:Label ID="Label_potvrda" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox_Datum" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Внеси го Резултатот" 
                        Width="202px" onclick="Button1_Click" BackColor="#FFCC00" 
                        ForeColor="#663300" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Avtentikacija" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>

</div>
<h3>Section 2</h3>
<div>

<p>Tuka tekst za prikaz na soodvetnite Rezultati<br />
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </p>
       
</div>

</div>
<div>

    <table class="style1">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>

 <asp:Label ID="Avt_Nadvor" runat="server" Text="" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</div>
</asp:Content>
