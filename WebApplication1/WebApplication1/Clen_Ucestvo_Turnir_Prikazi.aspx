<%@ Page Title="Прикажи Член-Учество Турнир" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clen_Ucestvo_Turnir_Prikazi.aspx.cs" Inherits="WebApplication1.WebForm5" %>
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
    {
        width: 671px;
    }
    .style6
    {
    }

    .style7
    {
        width: 216px;
    }
    
   
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="accordion">
        <h3>Прикажи - Член Учествува на Турнир</h3>
            
        <div class="style">

            <table class="style1">
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr bgcolor="#CCCCCC">
                    <td class="style6" colspan="2" align="center">
                        <strong style="text-align: left">Пребарај податоци за учество на Членови на 
                        Турнир </strong></td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        <strong>Избери Турнир - ID</strong></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1_ID_Turnir" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="id_turnir" 
                            DataValueField="id_turnir" AppendDataBoundItems="true" 
                            onselectedindexchanged="DropDownList1_ID_Turnir_SelectedIndexChanged">

                             <asp:ListItem Text="-Избери Турнир за Приказ-" Value=""/>

                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Задолжително Поле" 
                            ControlToValidate="DropDownList1_ID_Turnir"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            SelectCommand="SELECT [id_turnir] FROM [Turniri]"></asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr bgcolor="#CCCCCC">
                    <td class="style7">
                        Прикажи податоци<br />
                        за Турнири :</td>
                    <td>
                        <asp:GridView ID="GridView2_Prikaz_Turniri" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Прикажи" 
                            onclick="Button1_Click" BackColor="#FFCC00" />
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5" colspan="2" align="center">
                        <strong style="text-align: left">Податоците за направениот Избор се следните :</strong></td>
                </tr>
                <tr bgcolor="#CCCCCC">
                    <td class="style7">
                        Прикажи Член Учество-Турнир.</td>
                    <td class="style5">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="style5" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        </div>


</asp:Content>
