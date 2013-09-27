<%@ Page Title="Промени Турнир" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Turniri_Promeni.aspx.cs" Inherits="WebApplication1.Turniri_Promeni" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
 <style type="text/css">
        .style5
        {
    }
         #accordion
        {
            list-style: none;
            padding: 0 0 0 0;
            width: 810px;
        }
        #accordion div
        {
            display: block;
            font-weight: normal;
            margin: 0px;
            cursor: pointer;
            padding: 0 0 0 0px;
            list-style: circle;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            border-radius: 0px;
        }
        #accordion ul
        {
            list-style: none;
            padding: 0 0 0 0;
        }
        #accordion ul
        {
            display: none;
        }
        #accordion ul li
        {
            font-weight: normal;
            cursor: auto;
            background-color: #fff;
            padding: 0 0 0 7px;
        }
        #accordion a
        {
            text-decoration: none;
        }
        #accordion a:hover
        {
            text-decoration: underline;
            background: #E0F8F7;
        }
        
        #accordion h3:hover
        {
            text-decoration: underline;
            background:#F5D0A9;
        }
        
        #accordion h3
        {
            text-decoration: underline;
            background: #F3E2A9;
        }
        
        #accordion .style
        {
            background: #F8ECE0;
           
        }
        
        
        
     .style6
     {
         width: 70px;
     }
        
        
        
     .style7
     {
         width: 71px;
     }
        
        
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



<div id="accordion">
        <h3> ПРОМЕНЕТЕ ТУРНИР</h3>
           
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
                        &nbsp;</td>
                    <td align="center">
                        Тука направете промена на податоците за Турнири</td>
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
                            DataKeyNames="id_turnir" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ButtonType="Button" ShowEditButton="True" >
                                <ControlStyle BackColor="#FFCC00" ForeColor="#663300" />
                                </asp:CommandField>
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
                        </td>
                </tr>
                <tr>
                    <td class="style5" colspan="2">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            DeleteCommand="DELETE FROM [Turniri] WHERE [id_turnir] = @original_id_turnir AND (([turnir_ime] = @original_turnir_ime) OR ([turnir_ime] IS NULL AND @original_turnir_ime IS NULL)) AND (([turnir_lokacija] = @original_turnir_lokacija) OR ([turnir_lokacija] IS NULL AND @original_turnir_lokacija IS NULL)) AND (([turnir_tip] = @original_turnir_tip) OR ([turnir_tip] IS NULL AND @original_turnir_tip IS NULL)) AND (([datum] = @original_datum) OR ([datum] IS NULL AND @original_datum IS NULL))" 
                            InsertCommand="INSERT INTO [Turniri] ([turnir_ime], [turnir_lokacija], [turnir_tip], [datum]) VALUES (@turnir_ime, @turnir_lokacija, @turnir_tip, @datum)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Turniri]" 
                            UpdateCommand="UPDATE [Turniri] SET [turnir_ime] = @turnir_ime, [turnir_lokacija] = @turnir_lokacija, [turnir_tip] = @turnir_tip, [datum] = @datum WHERE [id_turnir] = @original_id_turnir AND (([turnir_ime] = @original_turnir_ime) OR ([turnir_ime] IS NULL AND @original_turnir_ime IS NULL)) AND (([turnir_lokacija] = @original_turnir_lokacija) OR ([turnir_lokacija] IS NULL AND @original_turnir_lokacija IS NULL)) AND (([turnir_tip] = @original_turnir_tip) OR ([turnir_tip] IS NULL AND @original_turnir_tip IS NULL)) AND (([datum] = @original_datum) OR ([datum] IS NULL AND @original_datum IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_id_turnir" Type="Int32" />
                                <asp:Parameter Name="original_turnir_ime" Type="String" />
                                <asp:Parameter Name="original_turnir_lokacija" Type="String" />
                                <asp:Parameter Name="original_turnir_tip" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_datum" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="turnir_ime" Type="String" />
                                <asp:Parameter Name="turnir_lokacija" Type="String" />
                                <asp:Parameter Name="turnir_tip" Type="String" />
                                <asp:Parameter DbType="Date" Name="datum" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="turnir_ime" Type="String" />
                                <asp:Parameter Name="turnir_lokacija" Type="String" />
                                <asp:Parameter Name="turnir_tip" Type="String" />
                                <asp:Parameter DbType="Date" Name="datum" />
                                <asp:Parameter Name="original_id_turnir" Type="Int32" />
                                <asp:Parameter Name="original_turnir_ime" Type="String" />
                                <asp:Parameter Name="original_turnir_lokacija" Type="String" />
                                <asp:Parameter Name="original_turnir_tip" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_datum" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
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
                    <td align="center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td align="center">
                        <asp:Label ID="Avtentikacija" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td align="center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td align="center">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
       
  
      
      
    </div>
    <div>

    
        <table class="style1">
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td align="center">
                        <asp:Label ID="Label_potvrda" runat="server"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td align="center">
                    <asp:Label ID="Avtentikacija_Nadvor" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    
    </div>

</asp:Content>
