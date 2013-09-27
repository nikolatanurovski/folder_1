<%@ Page Title="Log In" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Account.Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="Content_1">
    <style type="text/css">
        .login {
            width: 518px;
        }
        .Logiraj_se
{
    position:absolute;
    left:300px;
            top: 150px;
            width: 518px;
        }
        
        .textEntry
        {}
        .passwordEntry
        {}
        
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="Content_2">
   

    <div class="Logiraj_se">
    <div style="height: 101px">
    <h2 style="text-align:left">
        Најавете се:
    </h2>
    <p style="text-align:left">
        Ве молиме внесете го Вашето корисничко име и лозинка.
        
    </p>

    </div>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Login ID="LoginUser" runat="server" EnableViewState="False" 
            BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" 
            TextLayout="TextOnTop" FailureText="Вашиот обид за Најава е неуспешен.Обидете се повторно." FailureTextStyle-BackColor="#FF3300">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LayoutTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server" ></asp:Literal>
            </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup"/>
            <div class="accountInfo">
                <fieldset class="login">
                    <legend>Кориснички информации</legend>
                    <p>
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Корисничко Име:</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry" Width="194px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                             CssClass="failureNotification" ErrorMessage="Потребно е корисничко име " ToolTip="User Name is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Лозинка:</asp:Label>
                        &nbsp;&nbsp;
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                            ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password" 
                            Width="193px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="Потребна е лозинка" ToolTip="Password is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:CheckBox ID="RememberMe" runat="server"/>
                        <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Задржи ме најавен</asp:Label>
                    </p>
                </fieldset>
                <p class="submitButton">
                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" 
                        Text="Најави се:" ValidationGroup="LoginUserValidationGroup"  
                       />
                </p>
            </div>
        </LayoutTemplate>

<FailureTextStyle BackColor="#FF3300"></FailureTextStyle>

        <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:Login>
    
      <div style="height: 101px">
    <h2 style="text-align:left">
        Регистрирај се:
    </h2>
    <p style="text-align:left">
     
        Доколку предходно немате креирано сметка. <asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false">Регистрирај се тука:</asp:HyperLink> 
    </p>
          <p style="text-align:left"><a href="../Default.aspx">Врати се на почетна страна</a></p>
     
              

    </div>
    
    
    </div>
  
</asp:Content>
