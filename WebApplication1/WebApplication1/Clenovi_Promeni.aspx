<%@ Page Title="Промени Членови" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clenovi_Promeni.aspx.cs" Inherits="WebApplication1.Promeni_Clenovi" %>
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
    
         
        
        .style6
        {
            width: 161px;
        }
    
         
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="accordion">
        <h3>ПРОМЕНИ ПОДАТОЦИ ЗА ЧЛЕНОВИ</h3>
            
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
                        Тука извршете промена на податоците за Членови
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
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="embg" DataSourceID="SqlDataSource1" 
                            EmptyDataText="Нема Повеќе податоци за Приказ">
                            <Columns>
                                <asp:CommandField ButtonType="Button" ShowEditButton="True" >
                                <ControlStyle BackColor="#FFCC00" ForeColor="#663300" />
                                </asp:CommandField>
                                <asp:BoundField DataField="embg" HeaderText="embg" ReadOnly="True" 
                                    SortExpression="embg" />
                                <asp:BoundField DataField="ime_clen" HeaderText="ime_clen" 
                                    SortExpression="ime_clen" />
                                <asp:BoundField DataField="prezime_clen" HeaderText="prezime_clen" 
                                    SortExpression="prezime_clen" />
                                <asp:BoundField DataField="pol" HeaderText="pol" SortExpression="pol" />
                                <asp:BoundField DataField="vozrast" HeaderText="vozrast" 
                                    SortExpression="vozrast" />
                                <asp:TemplateField HeaderText="id_klub" SortExpression="id_klub">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource1" DataTextField="id_klub" DataValueField="id_klub" 
                                            SelectedValue='<%# Bind("id_klub") %>'>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                                            SelectCommand="SELECT [id_klub] FROM [Klubovi]"></asp:SqlDataSource>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("id_klub") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            DeleteCommand="DELETE FROM [Clenovi] WHERE [embg] = @original_embg AND (([ime_clen] = @original_ime_clen) OR ([ime_clen] IS NULL AND @original_ime_clen IS NULL)) AND (([prezime_clen] = @original_prezime_clen) OR ([prezime_clen] IS NULL AND @original_prezime_clen IS NULL)) AND (([pol] = @original_pol) OR ([pol] IS NULL AND @original_pol IS NULL)) AND (([vozrast] = @original_vozrast) OR ([vozrast] IS NULL AND @original_vozrast IS NULL)) AND [id_klub] = @original_id_klub" 
                            InsertCommand="INSERT INTO [Clenovi] ([embg], [ime_clen], [prezime_clen], [pol], [vozrast], [id_klub]) VALUES (@embg, @ime_clen, @prezime_clen, @pol, @vozrast, @id_klub)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Clenovi]" 
                            UpdateCommand="UPDATE [Clenovi] SET [ime_clen] = @ime_clen, [prezime_clen] = @prezime_clen, [pol] = @pol, [vozrast] = @vozrast, [id_klub] = @id_klub WHERE [embg] = @original_embg AND (([ime_clen] = @original_ime_clen) OR ([ime_clen] IS NULL AND @original_ime_clen IS NULL)) AND (([prezime_clen] = @original_prezime_clen) OR ([prezime_clen] IS NULL AND @original_prezime_clen IS NULL)) AND (([pol] = @original_pol) OR ([pol] IS NULL AND @original_pol IS NULL)) AND (([vozrast] = @original_vozrast) OR ([vozrast] IS NULL AND @original_vozrast IS NULL)) AND [id_klub] = @original_id_klub">
                            <DeleteParameters>
                                <asp:Parameter Name="original_embg" Type="String" />
                                <asp:Parameter Name="original_ime_clen" Type="String" />
                                <asp:Parameter Name="original_prezime_clen" Type="String" />
                                <asp:Parameter Name="original_pol" Type="String" />
                                <asp:Parameter Name="original_vozrast" Type="Int32" />
                                <asp:Parameter Name="original_id_klub" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="embg" Type="String" />
                                <asp:Parameter Name="ime_clen" Type="String" />
                                <asp:Parameter Name="prezime_clen" Type="String" />
                                <asp:Parameter Name="pol" Type="String" />
                                <asp:Parameter Name="vozrast" Type="Int32" />
                                <asp:Parameter Name="id_klub" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ime_clen" Type="String" />
                                <asp:Parameter Name="prezime_clen" Type="String" />
                                <asp:Parameter Name="pol" Type="String" />
                                <asp:Parameter Name="vozrast" Type="Int32" />
                                <asp:Parameter Name="id_klub" Type="Int32" />
                                <asp:Parameter Name="original_embg" Type="String" />
                                <asp:Parameter Name="original_ime_clen" Type="String" />
                                <asp:Parameter Name="original_prezime_clen" Type="String" />
                                <asp:Parameter Name="original_pol" Type="String" />
                                <asp:Parameter Name="original_vozrast" Type="Int32" />
                                <asp:Parameter Name="original_id_klub" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
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
            Section 2</h3>
        <div>
           
        </div>
    </div>
    <div>
        <table class="style1">
      
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


        <asp:Label ID="notify" runat="server" Text=""></asp:Label>
                    </td>
            </tr>
      
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Notify_nadvor" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </div>

</asp:Content>
