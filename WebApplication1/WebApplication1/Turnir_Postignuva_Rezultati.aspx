<%@ Page Title="Турнир Резултат" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Turnir_Postignuva_Rezultati.aspx.cs" Inherits="WebApplication1.Turnir_Postignuva_Rezultati" %>
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
            width: 207px;
            font-weight: 700;
        }
        
        
        
        .style7
    {
        width: 202px;
    }
        
        
        
        .style8
        {
            width: 207px;
        }
        
        
        
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<div id="accordion">

<h3>Додади Турнир - Резултат </h3>
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
                <asp:Label ID="Label1" runat="server" Text="Избери Турнир"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1_Turnir" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="id_turnir" 
                    DataValueField="id_turnir" AppendDataBoundItems="true"
                    onselectedindexchanged="DropDownList1_Turnir_SelectedIndexChanged">

                     <asp:ListItem Text="-Избери Турнир за Внес-" Value=""/>

                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownList1_Turnir" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    SelectCommand="SELECT [id_turnir] FROM [Turniri]"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style5" bgcolor="#CCCCCC">
                Прикажи Турнир</td>
            <td bgcolor="#CCCCCC">
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
                <asp:Label ID="Label2" runat="server" Text="Избери Резултат"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1_Rezultat" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="rezultat_id" 
                    DataValueField="rezultat_id" AppendDataBoundItems="true"
                    onselectedindexchanged="DropDownList1_Rezultat_SelectedIndexChanged">
                     <asp:ListItem Text="-Избери Резултат за Внес-" Value=""/>

                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DropDownList1_Rezultat" 
                    ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    SelectCommand="SELECT [rezultat_id] FROM [Rezultati]"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr bgcolor="#CCCCCC">
            <td class="style8">
                <strong>Прикажи резултат</strong></td>
            <td>
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
                <asp:Label ID="Label3" runat="server" Text="Внеси Турнири - Резултати"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Потврди" 
                    onclick="Button1_Click" BackColor="#FFCC00" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label_potvrda_rezultat_turniri" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="turnir_rezultat_vnatre" runat="server" Text=""></asp:Label>
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
            <td>
                <asp:Label ID="Label_Duplikat_Key" runat="server" Text="Label"></asp:Label>
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
<h3>Упатство за Менаџирање со Податоци за Турнир постигнува Резултат</h3>
<div class="style">
    <table class="style1">
        <tr>
            <td colspan="2">
                За да можете да менувате или бришете податоци за <strong>ТУРНИР ПОСТИГНУВА 
                РЕЗУЛТАТИ</strong> , од паѓачкото мени за избор изберете :<br />
                1.<strong>Турнир постигнува Резултати -&gt; Избриши Резултат - Турнир<br />
                </strong>За повторно да додадете <strong>Резултат за Турнир</strong> од паѓачкото 
                мени за избор изберете:<br />
                2.<strong>Турнир постигнува Резултати -&gt; Внеси Резултат - Турнири</strong></td>
        </tr>
        <tr>
            <td>
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
                <asp:Label ID="turnir_rezultat_nadvor" runat="server" ForeColor="#FF3300"></asp:Label>
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
