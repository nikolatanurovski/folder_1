<%@ Page Title="Прикажи Членови" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clenovi_Prikazi.aspx.cs" Inherits="WebApplication1.Clenovi_Prikazi" %>
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
        <h3>ПОДАТОЦИ ЗА Внесените Членови</h3>
            
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
                        Приказ на сите внесени Членови во базата</td>
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
                            DataKeyNames="embg" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="embg" HeaderText="embg" ReadOnly="True" 
                                    SortExpression="embg" />
                                <asp:BoundField DataField="ime_clen" HeaderText="ime_clen" 
                                    SortExpression="ime_clen" />
                                <asp:BoundField DataField="prezime_clen" HeaderText="prezime_clen" 
                                    SortExpression="prezime_clen" />
                                <asp:BoundField DataField="pol" HeaderText="pol" SortExpression="pol" />
                                <asp:BoundField DataField="vozrast" HeaderText="vozrast" 
                                    SortExpression="vozrast" />
                                <asp:BoundField DataField="id_klub" HeaderText="id_klub" 
                                    SortExpression="id_klub" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            SelectCommand="SELECT * FROM [Clenovi]"></asp:SqlDataSource>
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
