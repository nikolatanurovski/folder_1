﻿<%@ Page Title="Прикажи резултати член-турнир" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clen_Postignuva_Rezultati_Prikazi.aspx.cs" Inherits="WebApplication1.WebForm2" %>
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
    
         
        
    .style5
    {        text-align: center;
    }
    
         
        
    .style6
    {
        width: 183px;
    }
    
         
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="accordion">
        <h3>
            Член постигнува Резултат на Турнир</h3>
        <div class="style">

            <table class="style1">
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6">
                        <strong>Избери EMBG</strong></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1_Clen_Embg" runat="server" AppendDataBoundItems="True" 
                            onselectedindexchanged="DropDownList1_Rezultat_ID_SelectedIndexChanged" 
                            AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="embg" 
                            DataValueField="embg">

                             <asp:ListItem Text="-Избери ЕМБГ за Внес-" Value=""/>

                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="DropDownList1_Clen_Embg" 
                            ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            SelectCommand="SELECT [embg] FROM [Clenovi]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr bgcolor="#CCCCCC">
                    <td class="style6">
                        Прикажи ЕМБГ :</td>
                    <td>
                        <asp:GridView ID="GridView1_Clen_Embg_Prikaz" runat="server">
                        </asp:GridView>
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
                        <strong>Избери Турнир - ID</strong></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1_Turnir_ID" runat="server" 
                            AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="id_turnir" 
                            DataValueField="id_turnir"  AppendDataBoundItems="true"
                            onselectedindexchanged="DropDownList1_Turnir_ID_SelectedIndexChanged">

                             <asp:ListItem Text="-Избери Турнир за Внес-" Value=""/>

                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="DropDownList1_Turnir_ID" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            SelectCommand="SELECT [id_turnir] FROM [Turniri]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr bgcolor="#CCCCCC">
                    <td class="style6">
                        Прикажи Турнир :</td>
                    <td>
                        <asp:GridView ID="GridView1_Turnir_Prikaz" runat="server">
                        </asp:GridView>
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
                        <asp:Button ID="Button1" runat="server" Text="Прикажи" 
                            onclick="Button1_Click" BackColor="#FFCC00" ForeColor="#663300"/>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5" colspan="2">
                        <strong>Податоците за направениот Избор се следните :</strong></td>
                </tr>
                <tr>
                    <td class="style5" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5" colspan="2" bgcolor="#CCCCCC">
                        <asp:GridView ID="GridView1" runat="server" 
                            EmptyDataText="Нема соодветни податоци за приказ">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        </div>
</asp:Content>
