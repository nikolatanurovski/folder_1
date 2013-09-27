<%@ Page Title="Внеси Членови" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Clenovi_Vnesi.aspx.cs" Inherits="WebApplication1.Clenovi" %>

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
    height:600px;
}    
    
    
    
         
        
        .style9
        {
        }
    
         
        
        .style10
        {
            width: 247px;
        }
    
         
        
        .style12
        {
        }
    
         
        
        .style13
        {
            width: 59px;
        }
        .style14
        {
            width: 26px;
        }
    
         
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  
    <div id="accordion">
        <h3>ВНЕСИ ПОДАТОЦИ ЗА ЧЛЕНОВИ</h3>
            
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         
        <ContentTemplate>
         <asp:Panel ID="Panel1" runat="server">
        <div class="style">
           
            <table class="style1" style="width: 100%">
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style10">
                        <asp:Label ID="embg_Clen" runat="server" Text="ЕМБГ" style="font-weight: 700"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="embgclen" runat="server" Height="25px" MaxLength="13" 
                            Width="290px"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="embgclen" ErrorMessage="Задолжително Поле само Број-за ЕМБГ" 
                            validationexpression="^[0-9]{13}$"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="embgclen" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style10">
                        <asp:Label ID="Ime_Clen" runat="server" Text="Име" style="font-weight: 700"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="TextBox_Ime_Clen" runat="server" Height="25px" Width="290px"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_Ime_Clen"
                            ErrorMessage="Задолжителни букви Само Кирилица" ValidationExpression="[а-шА-ш]{0,32}"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style10">
                        <asp:Label ID="Label1" runat="server" Text="Презиме" style="font-weight: 700"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="TextBox_Prezime_Clen" runat="server" Height="25px" 
                            Width="290px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_Prezime_Clen"
                            ErrorMessage="Задолжително поле"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style10">
                        <asp:Label ID="Label2" runat="server" Text="Пол" style="font-weight: 700"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:DropDownList ID="DropDownList_Pol" runat="server">
                            <asp:ListItem Value="">----Одбери Пол----</asp:ListItem>
                            <asp:ListItem>М</asp:ListItem>
                            <asp:ListItem>Ж</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList_Pol"
                            ErrorMessage="Задолжително поле"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style10">
                        <asp:Label ID="Label3" runat="server" Text="Возраст" style="font-weight: 700"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="TextBox_Vozrast_Clen" runat="server"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_Vozrast_Clen"
                            ErrorMessage="Задолжителен внес на Број за години" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="TextBox_Vozrast_Clen" ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style10">
                        <asp:Label ID="Label4" runat="server" Text="Внеси Клуб-ID" 
                            style="font-weight: 700"></asp:Label>
                        &nbsp;
                    </td>
                    <td class="style5">
                        <asp:DropDownList ID="DropDownList_VnesiKlubID" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="id_klub" DataValueField="id_klub" AppendDataBoundItems="true"
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                             <asp:ListItem Text="-Избери Клуб-ID-" Value=""/>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="DropDownList_VnesiKlubID" 
                            ErrorMessage="Задолжително Поле"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:login_probaConnectionString %>" 
                            SelectCommand="SELECT [id_klub] FROM [Klubovi]"></asp:SqlDataSource>
                        <br />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style12" colspan="4">
                        <strong>Прикажи податоци за Клуб:</strong></td>
                </tr>
                <tr>
                    <td bgcolor="#CCCCCC" class="style14">
                        &nbsp;</td>
                    <td bgcolor="#CCCCCC" class="style9" colspan="3">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;
                    </td>
                    <td class="style5">
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;
                    </td>
                    <td class="style5">
                        <asp:Button ID="Button_Potvrdi" runat="server" Text="Внеси Член" OnClick="ButtonPotvrdi"
                            Width="126px" BackColor="#FFCC00" ForeColor="#663300" />
                        <asp:Label ID="Label_potvrda" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;
                    </td>
                    <td class="style5">
                        <asp:Label ID="Avtentikacija" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:Label ID="Label_Duplikat_Primary_Key" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
         

        </div>
        </asp:Panel>
        </ContentTemplate>
             <Triggers>
                 <asp:AsyncPostBackTrigger ControlID="Button_Potvrdi" />
             </Triggers>
        </asp:UpdatePanel>
         <h3>Објаснување за Внесување, Промена и бришење на податоци за Членови</h3>
             
        <div class="style">
        <p> - Во Панелата <strong>Внеси Членови</strong>, можете да ги внесете 
            соодветните <strong>податоци за Членот</strong> како&nbsp; <strong>и</strong>
            <strong>Идентификацискиот 
            брoј на Клубот</strong> во кој тој членува.<br />
&nbsp;&nbsp;&nbsp; Доколку сакате да извршите промена на податоците за членовите или да 
            избришете<br />
            некој член од базата, изберете соодветно од паѓачкото мени за избор.</p>
            <p> 1<em>. Промена на податоци за член</em><br />
                <strong>Членови -&gt; Промени Членови</strong><br />
                2.<em> Избриши податоци за член</em><br />
                <strong>Членови -&gt; Избриши Членови</strong><br />
&nbsp;</p>
        </div>
            
        
    </div>
    <div>
        <table class="style1">
            <tr>
                <td class="style7">
                    &nbsp;
                </td>
                <td>
                    <asp:Label ID="Avt_Nadvor" runat="server" Text="" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;
                </td>
                <td>
                    <asp:Label ID="ist_maticen" runat="server" Text=""></asp:Label>
                    <asp:Label ID="notify" runat="server" Text=""></asp:Label>
                    <br />
        <asp:Label ID="notify_1" runat="server" Text=""></asp:Label>


                </td>
            </tr>
        </table>
    </div>
    <br />
</asp:Content>
