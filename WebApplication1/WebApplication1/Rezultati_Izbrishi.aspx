<%@ Page Title="Избриши Резултат" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rezultati_Izbrishi.aspx.cs" Inherits="WebApplication1.Rezultati_Izbrishi" %>
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
        <h3>Избриши ПОДАТОЦИ Зa Резултати</h3>
            
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
                        Тука избришете ги податоците за Резултати 
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
                            DataKeyNames="rezultat_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                                <ControlStyle BackColor="#FFCC00" ForeColor="#663300" />
                                </asp:CommandField>
                                <asp:BoundField DataField="rezultat_id" HeaderText="rezultat_id" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="rezultat_id" />
                                <asp:BoundField DataField="rezultat_tip" HeaderText="rezultat_tip" 
                                    SortExpression="rezultat_tip" />
                                <asp:BoundField DataField="rezultat_kategorija" 
                                    HeaderText="rezultat_kategorija" SortExpression="rezultat_kategorija" />
                                <asp:BoundField DataField="rezultat_datum" HeaderText="rezultat_datum" 
                                    SortExpression="rezultat_datum" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            DeleteCommand="DELETE FROM [Rezultati] WHERE [rezultat_id] = @original_rezultat_id AND (([rezultat_tip] = @original_rezultat_tip) OR ([rezultat_tip] IS NULL AND @original_rezultat_tip IS NULL)) AND (([rezultat_kategorija] = @original_rezultat_kategorija) OR ([rezultat_kategorija] IS NULL AND @original_rezultat_kategorija IS NULL)) AND (([rezultat_datum] = @original_rezultat_datum) OR ([rezultat_datum] IS NULL AND @original_rezultat_datum IS NULL))" 
                            InsertCommand="INSERT INTO [Rezultati] ([rezultat_tip], [rezultat_kategorija], [rezultat_datum]) VALUES (@rezultat_tip, @rezultat_kategorija, @rezultat_datum)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Rezultati]" 
                            UpdateCommand="UPDATE [Rezultati] SET [rezultat_tip] = @rezultat_tip, [rezultat_kategorija] = @rezultat_kategorija, [rezultat_datum] = @rezultat_datum WHERE [rezultat_id] = @original_rezultat_id AND (([rezultat_tip] = @original_rezultat_tip) OR ([rezultat_tip] IS NULL AND @original_rezultat_tip IS NULL)) AND (([rezultat_kategorija] = @original_rezultat_kategorija) OR ([rezultat_kategorija] IS NULL AND @original_rezultat_kategorija IS NULL)) AND (([rezultat_datum] = @original_rezultat_datum) OR ([rezultat_datum] IS NULL AND @original_rezultat_datum IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_rezultat_id" Type="Int32" />
                                <asp:Parameter Name="original_rezultat_tip" Type="String" />
                                <asp:Parameter Name="original_rezultat_kategorija" Type="String" />
                                <asp:Parameter Name="original_rezultat_datum" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="rezultat_tip" Type="String" />
                                <asp:Parameter Name="rezultat_kategorija" Type="String" />
                                <asp:Parameter Name="rezultat_datum" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="rezultat_tip" Type="String" />
                                <asp:Parameter Name="rezultat_kategorija" Type="String" />
                                <asp:Parameter Name="rezultat_datum" Type="String" />
                                <asp:Parameter Name="original_rezultat_id" Type="Int32" />
                                <asp:Parameter Name="original_rezultat_tip" Type="String" />
                                <asp:Parameter Name="original_rezultat_kategorija" Type="String" />
                                <asp:Parameter Name="original_rezultat_datum" Type="String" />
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
            Section 22</h3>
        <div>
           
        </div>
    </div>


</asp:Content>
