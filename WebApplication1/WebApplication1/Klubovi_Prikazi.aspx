<%@ Page Title="Клуб Прикажи" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Klubovi_Prikazi.aspx.cs" Inherits="WebApplication1.Klubovi_Prikazi" %>
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
            width: 82px;
        }
    
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="accordion">
        <h3>ПОДАТОЦИ ЗА Внесените Клубови</h3>
            
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
                    <td style="text-align: center">
                        Приказ на сите внесените Клубови во базата</td>
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
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="id_klub" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="id_klub" HeaderText="id_klub" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="id_klub" />
                                <asp:BoundField DataField="ime_klub" HeaderText="ime_klub" 
                                    SortExpression="ime_klub" />
                                <asp:BoundField DataField="klub_lokacija" HeaderText="klub_lokacija" 
                                    SortExpression="klub_lokacija" />
                                <asp:BoundField DataField="klub_tip" HeaderText="klub_tip" 
                                    SortExpression="klub_tip" />
                                <asp:BoundField DataField="klub_trener" HeaderText="klub_trener" 
                                    SortExpression="klub_trener" />
                                <asp:BoundField DataField="klub_adresa" HeaderText="klub_adresa" 
                                    SortExpression="klub_adresa" />
                                <asp:BoundField DataField="id_turnir" HeaderText="id_turnir" 
                                    SortExpression="id_turnir" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            SelectCommand="SELECT * FROM [Klubovi]"></asp:SqlDataSource>
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
                <tr>
                    <td class="style5">
                        &nbsp;</td>
                    <td>


        <asp:Label ID="notify_1" runat="server" Text=""></asp:Label>
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
        <h3>
            Section 22</h3>
        <div>
           
        </div>
    </div>

</asp:Content>
