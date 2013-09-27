<%@ Page Title="Додај Резултат за Член" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clen_Postignuva_Rezultati.aspx.cs" Inherits="WebApplication1.Clen_Postignuva_Rezultati" %>
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
        }
        
        
        
        .style6
        {
       }
        
        
        
        .style7
        {
            width: 203px;
        }
        
        
        
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="accordion">

<h3>Додади Член - Резултат </h3>
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
                <asp:Label ID="Label1" runat="server" Text="Избери Член " 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_Rezultat_Clen_embg" runat="server" AppendDataBoundItems="true"
                    onselectedindexchanged="DropDownList_Rezultat_Clen_SelectedIndexChanged" 
                    AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="embg" 
                    DataValueField="embg">

                     <asp:ListItem Text="-Избери ЕМБГ за Членот-" Value=""/>

                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList_Rezultat_Clen_embg" 
                    ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    SelectCommand="SELECT [embg] FROM [Clenovi]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr bgcolor="#CCCCCC">
            <td class="style5">
                Прикажи Податоци<br />
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
                <asp:Label ID="Label2" runat="server" Text="Избери Резултат" 
                    style="font-weight: 700"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_Clen_rez" runat="server"  AppendDataBoundItems="true"
                    onselectedindexchanged="DropDownList_Clen_rez_SelectedIndexChanged" 
                    AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="rezultat_id" 
                    DataValueField="rezultat_id">

                 <asp:ListItem Text="-Избери Резултат ID-" Value=""/>

                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownList_Clen_rez" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    SelectCommand="SELECT [rezultat_id] FROM [Rezultati]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5" bgcolor="#CCCCCC">
                Прикажи податоци<br />
                за Резултат:</td>
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
                <asp:Label ID="Label3" runat="server" Text="Внеси Член - Постигнува Резултат"></asp:Label>
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
                <asp:Label ID="Label_potvrda" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="clen_rezultat_vnatre" runat="server" Text=""></asp:Label>
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
                <asp:Label ID="Label_Duplikat_key" runat="server" Text=""></asp:Label>
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
                &nbsp;</td>
        </tr>
    </table>


</div>
<h3>Објаснување за Член Постигнува Резултати</h3>
<div class="style">
    <table class="style1">
        <tr>
            <td class="style6" colspan="2">
                - За да внесете соодветен <strong>резултат кој го постигнал Членот</strong> , од 
                паѓачкото мени за избор требе да го изберете соодветниот <strong>идентификациски 
                број за Членот</strong> како и соодветниот <strong>идентификациски број за 
                резултатот</strong> кој тој го постигнал.Откако при изборот од паѓачкото мени во 
                соодветниот панел за приказ ќе ги видите податоците кој што сте ги избрале 
                потврдете го изборот со притискање на <strong>копчето Потврди</strong>.&nbsp; </td>
        </tr>
        <tr>
            <td class="style6">
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
                <asp:Label ID="clen_rezultat_nadvor" runat="server" ForeColor="#FF3300"></asp:Label>
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
