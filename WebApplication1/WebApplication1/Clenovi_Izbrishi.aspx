<%@ Page Title="Избриши Членови" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clenovi_Izbrishi.aspx.cs" Inherits="WebApplication1.Clenovi_Izbrishi" %>
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
    background:#F5D0A9;
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
            width: 179px;
        }
    
         
        
        .style6
        {
        width: 107px;
    }
    
         
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="accordion">
        <h3>ИЗБРИШИ ПОДАТОЦИ ЗА ЧЛЕНОВИ</h3>
            
        <div class="style">


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
                    <td align="center">


                        Тука Избришете ги податоците за Членови</td>
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


            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="embg" DataSourceID="SqlDataSource1" 
                            EmptyDataText="Нема повеќе податоци за Приказ">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" >
                    <ControlStyle BackColor="#FFCC00" ForeColor="#663300" />
                    </asp:CommandField>
                    <asp:TemplateField HeaderText="embg" SortExpression="embg">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("embg") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("embg") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
            <asp:Label ID="Clen_Izbrishi_notify0" runat="server" Text=""></asp:Label>


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
     </div>
    <div>
    
    
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
            <asp:Label ID="Clen_Izbrishi_notify" runat="server" Text=""></asp:Label>


                    </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Notify_nadvor" runat="server" ForeColor="#FF3300"></asp:Label>
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
</asp:Content>
