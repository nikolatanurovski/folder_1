<%@ Page Title="Член-Учество Турнир" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clen-Ucestvo-Turnir.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   
    <style type="text/css">
                        
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
        
        
        
        .style5
        {
            width: 231px;
        }
        
        
        
        .style6
        {
        }
        
        
        
        .style7
        {
            width: 203px;
        }
        
        
        
        .style8
        {
            width: 413px;
        }
        
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="accordion">

<h3>ДОДАДИ ЧЛЕН - ТУРНИР </h3>
<div class="style">


    <table class="style1">
        <tr>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="Избери Член" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_Clen" runat="server" AutoPostBack="True" AppendDataBoundItems="true"
                    DataSourceID="SqlDataSource1" DataTextField="embg" DataValueField="embg" 
                    onselectedindexchanged="DropDownList_Clen_SelectedIndexChanged">

                      <asp:ListItem Text="-Избери Член - ЕМБГ-" Value=""/>

                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList_Clen" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    SelectCommand="SELECT [embg] FROM [Clenovi]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr bgcolor="#CCCCCC">
            <td class="style5">
                Прикажи податоци<br />
                за Член:</td>
            <td>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
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
                <asp:Label ID="Label2" runat="server" Text="Избери Турнир" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_Turnir" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="id_turnir" 
                    DataValueField="id_turnir" AppendDataBoundItems="true"
                    onselectedindexchanged="DropDownList_Turnir_SelectedIndexChanged">

                      <asp:ListItem Text="-Избери Турнир - ID-" Value=""/>


                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownList_Turnir" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    SelectCommand="SELECT [id_turnir] FROM [Turniri]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5" bgcolor="#CCCCCC">
                Прикажи Податоци<br />
                за Турнир: </td>
            <td bgcolor="#CCCCCC">
                <asp:GridView ID="GridView2" runat="server">
                </asp:GridView>
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
                <asp:Label ID="Label3" runat="server" Text="Внеси Член - Учество Турнир"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Потврди" Width="102px" 
                    onclick="Button1_Click1" BackColor="#FFCC00" ForeColor="#663300"/>
                <asp:Label ID="Label_potvrda" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Avtentikacija" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label_duplikat_Key" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


</div>
<h3>----------------</h3>
<div class="style">
    <table class="style1">
        <tr>
            <td class="style6" colspan="2">
                
           
                
           
                
            </td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                За да ги оосвежите последните
                <br />
                податоци од Базата</td>
            <td>
            </td>
            <td>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
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
