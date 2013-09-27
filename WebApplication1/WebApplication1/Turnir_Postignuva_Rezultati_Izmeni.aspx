<%@ Page Title="Избриши Турнир-резултат" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Turnir_Postignuva_Rezultati_Izmeni.aspx.cs" Inherits="WebApplication1.Turnir_Postignuva_Rezultati_Izmeni" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<style type="text/css">
                        
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
        
   
        .style5
    {
        text-align: center;
    }
    .style6
    {
        text-align: left;
    }
    .style7
    {
        text-align: center;
        width: 240px;
    }
        
   
        .style8
    {
        text-align: left;
        width: 863px;
    }
        
   
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="accordion">

<h3>Избриши&nbsp; Турнир - Резултат </h3>
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
        <tr>
            <td class="style5" colspan="2">
                Тука можете да го избришете соодветниот Резултат за Турнир<br />
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id_turnir,rezultat_id" DataSourceID="SqlDataSource1" 
                    EmptyDataText="Нема Повеќе Податоци за Приказ">
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" >
                        <ControlStyle BackColor="#FFCC00" />
                        </asp:CommandField>
                        <asp:BoundField DataField="id_turnir" HeaderText="id_turnir" ReadOnly="True" 
                            SortExpression="id_turnir" />
                        <asp:BoundField DataField="rezultat_id" HeaderText="rezultat_id" 
                            ReadOnly="True" SortExpression="rezultat_id" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    DeleteCommand="DELETE FROM [Turnir_Postignuva_Rezultat] WHERE [id_turnir] = @original_id_turnir AND [rezultat_id] = @original_rezultat_id" 
                    InsertCommand="INSERT INTO [Turnir_Postignuva_Rezultat] ([id_turnir], [rezultat_id]) VALUES (@id_turnir, @rezultat_id)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Turnir_Postignuva_Rezultat]">
                    <DeleteParameters>
                        <asp:Parameter Name="original_id_turnir" Type="Int32" />
                        <asp:Parameter Name="original_rezultat_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id_turnir" Type="Int32" />
                        <asp:Parameter Name="rezultat_id" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
                <br />
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
                &nbsp;</td>
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
                <asp:Label ID="Label_potvrda_izmeni_turnir_postignuva_rezult" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label_potvrda_izmeni_turnir_postignuva_rezult_Vnatre" runat="server" Text=""></asp:Label>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


</div>
<h3>Прикажи Турнир - Резултати</h3>
<div class="style">
    <table class="style1">
        <tr>
            <td class="style6" colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="5">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="id_turnir" HeaderText="id_turnir" 
                            InsertVisible="False" ReadOnly="True" SortExpression="id_turnir" />
                        <asp:BoundField DataField="turnir_ime" HeaderText="turnir_ime" 
                            SortExpression="turnir_ime" />
                        <asp:BoundField DataField="turnir_lokacija" HeaderText="turnir_lokacija" 
                            SortExpression="turnir_lokacija" />
                        <asp:BoundField DataField="turnir_tip" HeaderText="turnir_tip" 
                            SortExpression="turnir_tip" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    SelectCommand="SELECT Turniri.id_turnir, Turniri.turnir_ime, Turniri.turnir_lokacija, Turniri.turnir_tip, Rezultati.rezultat_id, Rezultati.rezultat_tip, Rezultati.rezultat_kategorija, Rezultati.rezultat_datum FROM Turniri INNER JOIN Turnir_Postignuva_Rezultat ON Turniri.id_turnir = Turnir_Postignuva_Rezultat.id_turnir INNER JOIN Rezultati ON Turnir_Postignuva_Rezultat.rezultat_id = Rezultati.rezultat_id">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style8" colspan="4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8" colspan="4">
                За да ги оосвежите последните
                податоци
                од Базата притиснете на копчето Освежи</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="Button1" runat="server" Text="Освежи" onclick="Button1_Click" 
                    style="margin-left: 0px" />
            </td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>
</div>


</div>

<div>

    <table class="style1">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label_potvrda_izmeni_turnir_postignuva_rezult_Nadvor" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</div>


</asp:Content>
