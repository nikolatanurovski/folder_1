<%@ Page Title="Внеси Турнир" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Turniri_Dodadi.aspx.cs" Inherits="WebApplication1.Pages.WebForm2" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style5
        {
            width: 228px;
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
        
        
        
        .style6
        {
            width: 180px;
        }
        
        
        
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id="accordion">
        <h3> ДОДАДЕТЕ ТУРНИР</h3>
           
        <div class="style">
            <table class="style1">
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label2" runat="server" Text="Име на Турнир" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TB_TurnirIme" runat="server" Height="25px" Width="290px"  onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TB_TurnirIme" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label3" runat="server" Text="Локација" style="font-weight: 700"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TB_TurnirLokacija" runat="server" Height="25px" Width="290px"  
                            onkeydown = "return (event.keyCode!=13);" BackColor="White" 
                            BorderColor="#663300"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TB_TurnirLokacija" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label4" runat="server" Text="Тип на турнир" 
                            style="font-weight: 700"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList_Tip" runat="server"  
                            onkeydown = "return (event.keyCode!=13);" AutoPostBack="True">
                            <asp:ListItem Value="">----Одбери тип на Турнир----</asp:ListItem>
                            <asp:ListItem>Општински</asp:ListItem>
                            <asp:ListItem>Регионален</asp:ListItem>
                            <asp:ListItem>Државен</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="DropDownList_Tip" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="Label5" runat="server" Text="Датум" style="font-weight: 700"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_Datum" runat="server" Height="25px" Width="290px"  onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                        <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
                            Enabled="True" TargetControlID="TextBox_Datum" Format="MMMM d, yyyy" >
                        </asp:CalendarExtender>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox_Datum" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Внеси Турнир" 
                            onclick="Button2_Click" Width="136px" BackColor="#FFCC00" 
                            ForeColor="#663300" />
                        <asp:Label ID="Label_potvrda_1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td align="center">
                        <asp:Label ID="Avtentikacija_1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td align="center">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
       
  
      
      
    </div>
    <div>
        <table class="style1">
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td style="font-weight: 700">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td style="font-weight: 700">
        <asp:Label ID="Avt_Nadvor" runat="server" Text="" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
