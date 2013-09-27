<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true"
    CodeBehind="ChangePassword.aspx.cs" Inherits="WebApplication1.Account.ChangePassword" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="head_Nikola">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="Nikol">
    <h2>
        Променете ја вашата лозинка
    </h2>
    <p>
        <br />
        Користете ја следната формата за да ја промените лозинката.
    </p>
    <p>
        <br />
        Новата лозинка требе да има минимум 
         <%= Membership.MinRequiredPasswordLength %> <br />
         карактери должина.
    </p>
    <asp:ChangePassword ID="ChangeUserPassword" runat="server" 
    CancelDestinationPageUrl="~/" EnableViewState="false" RenderOuterTable="false" 
         SuccessPageUrl="ChangePasswordSuccess.aspx" 
    
        ChangePasswordFailureText="Грешена Лозинка или Погрешна потврда на Лозинка. Нова Лозинка минимум: {0} карактери.&lt;br/&gt; Потребни се специјални знаци во лозинката: {1}.">
        <ChangePasswordTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="ChangeUserPasswordValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="ChangeUserPasswordValidationGroup"/>
            <div class="accountInfo">
                <fieldset class="changePassword">
                    <legend>Податоци за Корисникот</legend>
                    <p>
                        <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Стара Лозинка :</asp:Label>
                        <asp:TextBox ID="CurrentPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" 
                             CssClass="failureNotification" ErrorMessage="Внесете Лозинка." ToolTip="Old Password is required" 
                             ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">Нова Лозинка:</asp:Label>
                        <asp:TextBox ID="NewPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" 
                             CssClass="failureNotification" ErrorMessage="Внесете  ја новата Лозинка." ToolTip="New Password is required" 
                             ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Потврди Нова Лозинка:</asp:Label>
                        <asp:TextBox ID="ConfirmNewPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" 
                             CssClass="failureNotification" Display="Dynamic" ErrorMessage="Потребно е да ја потврдите новата Лозинка"
                             ToolTip="Confirm New Password is required." ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" 
                             CssClass="failureNotification" Display="Dynamic" ErrorMessage="Новата лозинка требе да се софпаѓа со потврдената лозинка."
                             ValidationGroup="ChangeUserPasswordValidationGroup">*</asp:CompareValidator>
                    </p>
                </fieldset>
                <p class="submitButton">
                    <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Поништи"/>
                       
                    <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" Text="Промени Лозинка" 
                         ValidationGroup="ChangeUserPasswordValidationGroup"/>
                </p>
            </div>
        </ChangePasswordTemplate>
    </asp:ChangePassword>
</asp:Content>
