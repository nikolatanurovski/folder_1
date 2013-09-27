<%@ Page Title="Додај Клуб" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Klubovi_Dodadi.aspx.cs" Inherits="WebApplication1.Klubovi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style5
        {
        }
                
        #accordion
        {
            list-style: none;
            padding: 0 0 0 0;
            width: 810px;
        }
        #accordion div
        {
            display: block;
            font-weight: normal;
            margin: 0px;
            cursor: pointer;
            padding: 0 0 0 0px;
            list-style: circle;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            border-radius: 0px;
        }
        #accordion ul
        {
            list-style: none;
            padding: 0 0 0 0;
        }
        #accordion ul
        {
            display: none;
        }
        #accordion ul li
        {
            font-weight: normal;
            cursor: auto;
            background-color: #fff;
            padding: 0 0 0 7px;
        }
        #accordion a
        {
            text-decoration: none;
        }
        #accordion a:hover
        {
            text-decoration: underline;
            background: #E0F8F7;
        }
        
        #accordion h3:hover
        {
            text-decoration: underline;
             background:#F5D0A9;
        }
        
        #accordion h3
        {
            text-decoration: underline;
            background: #F3E2A9;
        }
        
        #accordion .style
        {
            background: #F8ECE0;
        }
        .style7
        {
        }
        .style8
        {
        }
        .style9
        {
            width: 237px;
        }
        .style10
        {
            font-weight: normal;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="accordion">
        <h3>
            <span class="style10">Внеси Клубови</span> </h3>
        <div class="style">
            <table class="style1">
                <tr>
                    <td class="style5" colspan="2">
                        &nbsp;Внесете ги податоците за Клубот назначени во полињата за внес&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;
                    </td>
                    <td align="center">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label2" runat="server" Text="Име на Клуб" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBKlub_Ime" runat="server" Width="290px" Height="25px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TBKlub_Ime" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label3" runat="server" Text="Локација" style="font-weight: 700"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBKlub_Lokacija" runat="server" Width="290px" Height="25px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TBKlub_Lokacija" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label4" runat="server" Text="Тип на Клуб" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList_Klub_Tip" runat="server">
                            <asp:ListItem Value="">----Одбери Тип на Клуб----</asp:ListItem>
                            <asp:ListItem>Кошарка</asp:ListItem>
                            <asp:ListItem>Ракомет</asp:ListItem>
                            <asp:ListItem>Фудбал</asp:ListItem>
                            <asp:ListItem>Одбојка</asp:ListItem>
                            <asp:ListItem>Гимнастика</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="DropDownList_Klub_Tip" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label6" runat="server" Text="Tренер - Име Презиме" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBTrener_klub" runat="server" Height="25" Width="290px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TBTrener_klub" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label5" runat="server" Text="Адреса на клуб" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBKlub_Adresa" runat="server" Height="25" Width="290px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TBKlub_Adresa" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label7" runat="server" 
                            Text="Внеси Турнир на кој учествувал Клубот" style="font-weight: 700"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList_VnesTurnir_ID" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="id_turnir" DataValueField="id_turnir" AppendDataBoundItems="true"
                            onselectedindexchanged="DropDownList_Klub_ID_SelectedIndexChanged" 
                            AutoPostBack="True">
                             <asp:ListItem Text="-Избери Турнир-ID-" Value=""/>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="DropDownList_VnesTurnir_ID" 
                            ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>"
                            SelectCommand="SELECT [id_turnir] FROM [Turniri]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="style7" colspan="2" align="center" bgcolor="#CCCCCC">
                        <asp:GridView ID="GridView2" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Внеси го Клубот" 
                            OnClick="Button3_Click" BackColor="#FFCC00" ForeColor="#663300" />
                        <asp:Label ID="Label_potvrda" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;
                    </td>
                    <td>
                        <asp:Label ID="Avtentikacija" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label_Duplicat_Primary_Key" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
      
        
       

    </div>
    <div>
        <table class="style1">
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td align="center">
                     <asp:Label ID="Avt_Nadvor" runat="server" Text="" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8" colspan="2" align="center">
                    <asp:Label ID="Label_potvrda_1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
