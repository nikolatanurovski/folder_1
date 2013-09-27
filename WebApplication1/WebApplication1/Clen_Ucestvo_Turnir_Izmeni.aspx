<%@ Page Title="Член-Учество_турнир-Избриши" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clen_Ucestvo_Turnir_Izmeni.aspx.cs" Inherits="WebApplication1.Clen_Ucestvo_Turnir_Izmeni" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style5
        {
            width: 583px;
        }
    .style7
    {
        width: 243px;
    }
                      
      
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
    height:400px;
}    
    

    .style8
    {
        }
    .style9
    {
        width: 252px;
    }
    

        .style10
        {
            width: 169px;
        }
        .style11
        {
        }
        .style12
        {
        }
    

    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="accordion">

<h3>Член - Учество Турнир Избриши </h3>
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
                Избриши Член - Учество Турнир</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
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
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id_turnir,embg" DataSourceID="SqlDataSource1" 
                    EmptyDataText="Нема повеќе податоци за Приказ">
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" >
                        <ControlStyle BackColor="#FFCC00" />
                        </asp:CommandField>
                        <asp:BoundField DataField="id_turnir" HeaderText="id_turnir" ReadOnly="True" 
                            SortExpression="id_turnir" />
                        <asp:BoundField DataField="embg" HeaderText="embg" ReadOnly="True" 
                            SortExpression="embg" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    DeleteCommand="DELETE FROM [ClenUcestvoTurnir] WHERE [id_turnir] = @original_id_turnir AND [embg] = @original_embg" 
                    InsertCommand="INSERT INTO [ClenUcestvoTurnir] ([id_turnir], [embg]) VALUES (@id_turnir, @embg)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [ClenUcestvoTurnir]">
                    <DeleteParameters>
                        <asp:Parameter Name="original_id_turnir" Type="Int32" />
                        <asp:Parameter Name="original_embg" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id_turnir" Type="Int32" />
                        <asp:Parameter Name="embg" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
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
                <asp:Label ID="Label_potvrda_izmeni_Clen_uces_turnir" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:Label ID="izmeni_clen_ucest_turnir_vnatre" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>


</div>
<h3>Приказ на Внесените учества за Членови - Турнири</h3>
<div class="style">
    <table class="style1">
        <tr>
            <td class="style6" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" colspan="4">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="embg,id_turnir,Expr1,Expr2" DataSourceID="SqlDataSource2" 
                    EmptyDataText="Нема податоци за приказ">
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
                        <asp:BoundField DataField="id_turnir" HeaderText="id_turnir" ReadOnly="True" 
                            SortExpression="id_turnir" />
                        <asp:BoundField DataField="Expr1" HeaderText="EMBG" ReadOnly="True" 
                            SortExpression="Expr1" />
                        <asp:BoundField DataField="Expr2" HeaderText="ID_TURNIR" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Expr2" />
                        <asp:BoundField DataField="turnir_ime" HeaderText="turnir_ime" 
                            SortExpression="turnir_ime" />
                        <asp:BoundField DataField="turnir_lokacija" HeaderText="turnir_lokacija" 
                            SortExpression="turnir_lokacija" />
                        <asp:BoundField DataField="turnir_tip" HeaderText="turnir_tip" 
                            SortExpression="turnir_tip" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    SelectCommand="SELECT Clenovi.embg, Clenovi.ime_clen, Clenovi.prezime_clen, Clenovi.pol, Clenovi.vozrast, ClenUcestvoTurnir.id_turnir, ClenUcestvoTurnir.embg AS Expr1, Turniri.id_turnir AS Expr2, Turniri.turnir_ime, Turniri.turnir_lokacija, Turniri.turnir_tip FROM Clenovi INNER JOIN ClenUcestvoTurnir ON Clenovi.embg = ClenUcestvoTurnir.embg INNER JOIN Turniri ON ClenUcestvoTurnir.id_turnir = Turniri.id_turnir">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style11" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8" colspan="2">
                За да ги погледнете најновите Податоци од Базата Притиснете на копчето Овежи</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" Text="Освежи" onclick="Button1_Click" 
                    style="margin-left: 109px" />
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</div>

<h3>Објаснување - Член Учество Турнири - Измени</h3>
<div class="style">
    <table class="style1">
        <tr>
            <td class="style6" colspan="2">
                - Доколку сте направиле грешка при внесувањето на соодветниот турнир за 
                Членот,<br />
                во Панелот<strong> Член - Учество Турнир-Избриши</strong> , можете да го избришете соодветнот запис<br />
                за&nbsp; <strong>Член Учество- Турнир </strong>.<br />
                Откако ќе го избришете соодветниот запис за&nbsp; <strong>Член-Учество Турнир</strong>, повторно 
                додадете го соодветното учество на членот на одреден турнир, за соодветнот член, 
                преку паѓачкото мени за избор -&nbsp; <strong>Член Учество на Турнир</strong> -&gt; <strong>Потврди&nbsp; 
                - Член Учество Турнир</strong>.</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
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
                <asp:Label ID="izmeni_clen_uces_turnir_vnatre0" runat="server" Text=""></asp:Label>
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
