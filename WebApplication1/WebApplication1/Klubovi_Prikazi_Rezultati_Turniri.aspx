<%@ Page Title="Резултат на Турнир" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Klubovi_Prikazi_Rezultati_Turniri.aspx.cs" Inherits="WebApplication1.WebForm6" %>
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
            Клуб постигнува Резултат на Турнир</h3>
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
                        <strong>Избери Клуб - ID</strong></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1_IdKlub" runat="server" AutoPostBack="True" AppendDataBoundItems="true" 
                            DataSourceID="SqlDataSource1" DataTextField="id_klub" 
                            DataValueField="id_klub" 
                            onselectedindexchanged="DropDownList1_IdKlub_SelectedIndexChanged">

                             <asp:ListItem Text="-Избери Клуб за Приказ-" Value=""/>

                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Задолжително Поле" ControlToValidate="DropDownList1_IdKlub"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            SelectCommand="SELECT [id_klub] FROM [Klubovi]"></asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr bgcolor="#CCCCCC">
                    <td class="style6">
                        Прикажи Клуб :</td>
                    <td>
                        <asp:GridView ID="GridView2_prikaz_Klubovi" runat="server">
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
                        <asp:DropDownList ID="DropDownList2_Id_Turnir" runat="server" AppendDataBoundItems="true"
                            AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="id_turnir" 
                            DataValueField="id_turnir" 
                            onselectedindexchanged="DropDownList2_Id_Turnir_SelectedIndexChanged">

                            <asp:ListItem Text="-Избери Турнир за Приказ-" Value=""/>

                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Задолжително Поле" 
                            ControlToValidate="DropDownList2_Id_Turnir"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            SelectCommand="SELECT [id_turnir] FROM [Turniri]"></asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr bgcolor="#CCCCCC">
                    <td class="style6">
                        Прикажи Турнир :</td>
                    <td>
                        <asp:GridView ID="GridView3_Prikaz_Turniri" runat="server">
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
                            onclick="Button1_Click" BackColor="#FFCC00"/>
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
                            EmptyDataText="Нема соодветни Податоци за Приказ">
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
