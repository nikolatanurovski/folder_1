<%@ Page Title="Член Постигнува Резултати-Измени(Избриши)" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clen_Post_Rez_Izmeni.aspx.cs" Inherits="WebApplication1.Clen_Post_Rez_Izmeni" %>
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
            text-align: left;
        }
        
        #accordion .style
        {
            background: #F8ECE0;
           
        }
       
        
        
        .style5
        {
        }
        .style6
        {
        }
        .style7
        {
            width: 150px;
        }
       
        
        
        .style8
        {
            width: 124px;
        }
       
        
        
        .style9
        {
            width: 134px;
        }
        .style10
        {
            width: 541px;
        }
        .style11
        {
            width: 1238px;
        }
       
        
        
        </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="accordion">

<h3>Избриши Член - Постигнува Резултат </h3>
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
                Избриши резултат за Член</td>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="rezultat_id,embg" DataSourceID="SqlDataSource1" 
                    EmptyDataText="Нема податоци за приказ">
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                            AccessibleHeaderText="Избриши Член-Резултат" >
                        <ControlStyle BackColor="#FFCC00" />
                        </asp:CommandField>
                        <asp:BoundField DataField="rezultat_id" HeaderText="rezultat_id" 
                            ReadOnly="True" SortExpression="rezultat_id" />
                        <asp:BoundField DataField="embg" HeaderText="embg" ReadOnly="True" 
                            SortExpression="embg" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    DeleteCommand="DELETE FROM [Clen_Postignuva_Rezultat] WHERE [rezultat_id] = @original_rezultat_id AND [embg] = @original_embg" 
                    InsertCommand="INSERT INTO [Clen_Postignuva_Rezultat] ([rezultat_id], [embg]) VALUES (@rezultat_id, @embg)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Clen_Postignuva_Rezultat]">
                    <DeleteParameters>
                        <asp:Parameter Name="original_rezultat_id" Type="Int32" />
                        <asp:Parameter Name="original_embg" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="rezultat_id" Type="Int32" />
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
                <asp:Label ID="Label_potvrda_izmeni_rezultat_Clen" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:Label ID="izmeni_rezultat_clen_vnatre" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>


</div>
<h3>Приказ на Внесените резултати за Членови</h3>
<div class="style">
    <table class="style1">
        <tr>
            <td class="style6" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="embg" HeaderText="embg" SortExpression="embg" />
                        <asp:BoundField DataField="ime_clen" HeaderText="ime_clen" 
                            SortExpression="ime_clen" />
                        <asp:BoundField DataField="prezime_clen" HeaderText="prezime_clen" 
                            SortExpression="prezime_clen" />
                        <asp:BoundField DataField="pol" HeaderText="pol" SortExpression="pol" />
                        <asp:BoundField DataField="vozrast" HeaderText="vozrast" 
                            SortExpression="vozrast" />
                        <asp:BoundField DataField="rezultat_id" HeaderText="rezultat_id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="rezultat_id" />
                        <asp:BoundField DataField="rezultat_tip" HeaderText="rezultat_tip" 
                            SortExpression="rezultat_tip" />
                        <asp:BoundField DataField="rezultat_kategorija" 
                            HeaderText="rezultat_kategorija" SortExpression="rezultat_kategorija" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                    SelectCommand="SELECT Clenovi.embg, Clenovi.ime_clen, Clenovi.prezime_clen, Clenovi.pol, Clenovi.vozrast, Rezultati.rezultat_id, Rezultati.rezultat_tip, Rezultati.rezultat_kategorija FROM Clenovi INNER JOIN Clen_Postignuva_Rezultat ON Clenovi.embg = Clen_Postignuva_Rezultat.embg INNER JOIN Rezultati ON Clen_Postignuva_Rezultat.rezultat_id = Rezultati.rezultat_id">
                </asp:SqlDataSource>
            </td>
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
            <td class="style6" colspan="2">
                - Доколку сте направиле грешка при внесувањето на соодветниот резултат за 
                Членот,<br />
                во Панелот Избриши Резултат Член , можете да го избришете соодветнот запис<br />
                за Резултат - Член.<br />
                Откако ќе го избришете резултатот за соодветниот Член, повторно додадете го 
                резултатот,<br />
                за соодветнот член, преку паѓачкото мени за избор -&nbsp; Член Постигнува 
                резултати -&gt; Внеси Резултат - Членови.</td>
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
                <asp:Label ID="izmeni_rezultat_clen_vnatre0" runat="server" Text=""></asp:Label>
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
