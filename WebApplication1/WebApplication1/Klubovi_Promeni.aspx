<%@ Page Title="Клуб Промени" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Klubovi_Promeni.aspx.cs" Inherits="WebApplication1.Klubovi_Promeni" %>
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
        }
    

         
        
        .style6
        {
        }
    

         
        
        .style7
        {
            width: 49px;
        }
    

         
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="accordion">
        <h3>ПРОМЕНИ ПОДАТОЦИ ЗА КЛУБОВИ</h3>
            
        <div class="style">


            <table class="style1">
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style5" colspan="2" align="center">
                        Тука направете ги промените за Клубовите</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style5" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="id_klub" DataSourceID="SqlDataSource1" style="margin-left: 0px" 
                            Width="660px" EmptyDataText="Нема податоци за Приказ">
                            <Columns>
                                <asp:CommandField ButtonType="Button" ShowEditButton="True" >
                                <ControlStyle BackColor="#FFCC00" ForeColor="#663300" />
                                </asp:CommandField>
                                <asp:BoundField DataField="id_klub" HeaderText="id_klub" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="id_klub" />
                                <asp:BoundField DataField="ime_klub" HeaderText="ime_klub" 
                                    SortExpression="ime_klub" >
                                </asp:BoundField>
                                <asp:BoundField DataField="klub_lokacija" HeaderText="klub_lokacija" 
                                    SortExpression="klub_lokacija" />
                                <asp:BoundField DataField="klub_tip" HeaderText="klub_tip" 
                                    SortExpression="klub_tip" />
                                <asp:BoundField DataField="klub_trener" HeaderText="klub_trener" 
                                    SortExpression="klub_trener" />
                                <asp:BoundField DataField="klub_adresa" HeaderText="klub_adresa" 
                                    SortExpression="klub_adresa" />
                                <asp:TemplateField HeaderText="id_turnir" SortExpression="id_turnir">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                            DataSourceID="SqlDataSource1" DataTextField="id_turnir" 
                                            DataValueField="id_turnir" SelectedValue='<%# Bind("id_turnir") %>'>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                                            SelectCommand="SELECT [id_turnir] FROM [Turniri]"></asp:SqlDataSource>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("id_turnir") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            DeleteCommand="DELETE FROM [Klubovi] WHERE [id_klub] = @original_id_klub AND (([ime_klub] = @original_ime_klub) OR ([ime_klub] IS NULL AND @original_ime_klub IS NULL)) AND (([klub_lokacija] = @original_klub_lokacija) OR ([klub_lokacija] IS NULL AND @original_klub_lokacija IS NULL)) AND (([klub_tip] = @original_klub_tip) OR ([klub_tip] IS NULL AND @original_klub_tip IS NULL)) AND (([klub_trener] = @original_klub_trener) OR ([klub_trener] IS NULL AND @original_klub_trener IS NULL)) AND (([klub_adresa] = @original_klub_adresa) OR ([klub_adresa] IS NULL AND @original_klub_adresa IS NULL)) AND [id_turnir] = @original_id_turnir" 
                            InsertCommand="INSERT INTO [Klubovi] ([ime_klub], [klub_lokacija], [klub_tip], [klub_trener], [klub_adresa], [id_turnir]) VALUES (@ime_klub, @klub_lokacija, @klub_tip, @klub_trener, @klub_adresa, @id_turnir)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Klubovi]" 
                            UpdateCommand="UPDATE [Klubovi] SET [ime_klub] = @ime_klub, [klub_lokacija] = @klub_lokacija, [klub_tip] = @klub_tip, [klub_trener] = @klub_trener, [klub_adresa] = @klub_adresa, [id_turnir] = @id_turnir WHERE [id_klub] = @original_id_klub AND (([ime_klub] = @original_ime_klub) OR ([ime_klub] IS NULL AND @original_ime_klub IS NULL)) AND (([klub_lokacija] = @original_klub_lokacija) OR ([klub_lokacija] IS NULL AND @original_klub_lokacija IS NULL)) AND (([klub_tip] = @original_klub_tip) OR ([klub_tip] IS NULL AND @original_klub_tip IS NULL)) AND (([klub_trener] = @original_klub_trener) OR ([klub_trener] IS NULL AND @original_klub_trener IS NULL)) AND (([klub_adresa] = @original_klub_adresa) OR ([klub_adresa] IS NULL AND @original_klub_adresa IS NULL)) AND [id_turnir] = @original_id_turnir">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id_klub" Type="Int32" />
                                <asp:Parameter Name="original_ime_klub" Type="String" />
                                <asp:Parameter Name="original_klub_lokacija" Type="String" />
                                <asp:Parameter Name="original_klub_tip" Type="String" />
                                <asp:Parameter Name="original_klub_trener" Type="String" />
                                <asp:Parameter Name="original_klub_adresa" Type="String" />
                                <asp:Parameter Name="original_id_turnir" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ime_klub" Type="String" />
                                <asp:Parameter Name="klub_lokacija" Type="String" />
                                <asp:Parameter Name="klub_tip" Type="String" />
                                <asp:Parameter Name="klub_trener" Type="String" />
                                <asp:Parameter Name="klub_adresa" Type="String" />
                                <asp:Parameter Name="id_turnir" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ime_klub" Type="String" />
                                <asp:Parameter Name="klub_lokacija" Type="String" />
                                <asp:Parameter Name="klub_tip" Type="String" />
                                <asp:Parameter Name="klub_trener" Type="String" />
                                <asp:Parameter Name="klub_adresa" Type="String" />
                                <asp:Parameter Name="id_turnir" Type="Int32" />
                                <asp:Parameter Name="original_id_klub" Type="Int32" />
                                <asp:Parameter Name="original_ime_klub" Type="String" />
                                <asp:Parameter Name="original_klub_lokacija" Type="String" />
                                <asp:Parameter Name="original_klub_tip" Type="String" />
                                <asp:Parameter Name="original_klub_trener" Type="String" />
                                <asp:Parameter Name="original_klub_adresa" Type="String" />
                                <asp:Parameter Name="original_id_turnir" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>


                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>


                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
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
            <p>
                Tuka tekst za prikaz na soodvetnite clemnovi</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
    </div>
    <div>
    
        <table class="style1">
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6" colspan="2" align="center">
                    <asp:Label ID="notify_Klubovi" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6" colspan="2" align="center">
                    <asp:Label ID="notify_1_Klubovi" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>

</asp:Content>
