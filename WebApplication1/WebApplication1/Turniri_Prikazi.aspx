<%@ Page Title="Прикажи Турнир" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Turniri_Prikazi.aspx.cs" Inherits="WebApplication1.Turniri_Prikazi" %>
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
        <h3>ПОДАТОЦИ ЗА Внесените Турнири</h3>
            
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
                        Приказ на сите внесените Турнири во базата</td>
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
                            DataKeyNames="id_turnir" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="id_turnir" HeaderText="id_turnir" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="id_turnir" />
                                <asp:BoundField DataField="turnir_ime" HeaderText="turnir_ime" 
                                    SortExpression="turnir_ime" />
                                <asp:BoundField DataField="turnir_lokacija" HeaderText="turnir_lokacija" 
                                    SortExpression="turnir_lokacija" />
                                <asp:BoundField DataField="turnir_tip" HeaderText="turnir_tip" 
                                    SortExpression="turnir_tip" />
                                <asp:BoundField DataField="datum" HeaderText="datum" SortExpression="datum" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            SelectCommand="SELECT * FROM [Turniri]"></asp:SqlDataSource>
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
