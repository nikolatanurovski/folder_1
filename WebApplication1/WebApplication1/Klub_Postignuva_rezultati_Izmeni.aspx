<%@ Page Title="Избриши клуб-резултати" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Klub_Postignuva_rezultati_Izmeni.aspx.cs" Inherits="WebApplication1.Klub_Postignuva_rezultati_Izmeni" %>
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
        width: 24px;
    }
    .style6
    {
        width: 33px;
    }
    .style7
    {
        width: 249px;
    }
    

    

    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="accordion">

<h3>Избриши Клуб - Постигнува Резултат </h3>
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
                Тука Избриши резултат за Клуб</td>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="rezultat_id,id_klub" DataSourceID="SqlDataSource1" 
                    EmptyDataText="Нема Податоци за приказ">
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" >
                        <ControlStyle BackColor="#FFCC00" />
                        </asp:CommandField>
                        <asp:BoundField DataField="rezultat_id" HeaderText="rezultat_id" 
                            ReadOnly="True" SortExpression="rezultat_id" />
                        <asp:BoundField DataField="id_klub" HeaderText="id_klub" ReadOnly="True" 
                            SortExpression="id_klub" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    DeleteCommand="DELETE FROM [Klub_Postignuva_Rezultat] WHERE [rezultat_id] = @original_rezultat_id AND [id_klub] = @original_id_klub" 
                    InsertCommand="INSERT INTO [Klub_Postignuva_Rezultat] ([rezultat_id], [id_klub]) VALUES (@rezultat_id, @id_klub)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Klub_Postignuva_Rezultat]">
                    <DeleteParameters>
                        <asp:Parameter Name="original_rezultat_id" Type="Int32" />
                        <asp:Parameter Name="original_id_klub" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="rezultat_id" Type="Int32" />
                        <asp:Parameter Name="id_klub" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
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
                <asp:Label ID="Label_potvrda_izmeni_rezultat_Klub" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:Label ID="izmeni_rezultat_Klub_vnatre" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>


</div>
<h3>Приказ на Внесените резултати за Клубови</h3>
<div class="style">
    <table class="style1">
        <tr>
            <td class="style6" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="3">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="id_klub,rezultat_id,id_klub1,rezultat_id1" 
                    DataSourceID="SqlDataSource2" EmptyDataText="Нема Податоци за Приказ">
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
                        <asp:BoundField DataField="rezultat_id" HeaderText="rezultat_id" 
                            ReadOnly="True" SortExpression="rezultat_id" />
                        <asp:BoundField DataField="id_klub1" HeaderText="id_klub1" ReadOnly="True" 
                            SortExpression="id_klub1" />
                        <asp:BoundField DataField="rezultat_id1" HeaderText="rezultat_id1" 
                            InsertVisible="False" ReadOnly="True" SortExpression="rezultat_id1" />
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
                    SelectCommand="SELECT Klubovi.*, Klub_Postignuva_Rezultat.*, Rezultati.* FROM Klubovi INNER JOIN Klub_Postignuva_Rezultat ON Klubovi.id_klub = Klub_Postignuva_Rezultat.id_klub INNER JOIN Rezultati ON Klub_Postignuva_Rezultat.rezultat_id = Rezultati.rezultat_id">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style11">
                За да ги погледнете најновите Податоци од Базата Притиснете на копчето Овежи</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Освежи" onclick="Button1_Click" 
                    style="margin-left: 109px" />
            </td>
        </tr>
    </table>
</div>

<h3>Објаснување - Повторно Внесете го резултатот</h3>
<div class="style">
    
    <table class="style1">
        <tr>
            <td colspan="2">
                - Доколку сте направиле <strong>грешка</strong> при внесувањето на соодветниот<strong> 
                резултат за Клубот</strong>,<br />
                1. Во Панелот <strong>Избриши Клубови-Резултати</strong> , можете да го<strong> 
                избришете соодветнот запис,<br />
                </strong>за <strong>Резултат - Клуб.</strong> Откако ќе го избришете резултатот 
                за соодветниот Клуб, <strong>повторно додадете го точниот резултатот</strong>, 
                за соодветнот клуб.<br />
                2. Преку <strong>паѓачкото мени за избор</strong> -&nbsp; <strong>Клуб Постигнува 
                резултати -&gt; Внеси&nbsp; Клубови-Резултати</strong>.</td>
        </tr>
        <tr>
            <td>
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
                <asp:Label ID="izmeni_rezultat_Klub_nadvor" runat="server" Text=""></asp:Label>
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
