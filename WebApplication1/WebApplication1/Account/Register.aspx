<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Account.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="head_Nikola">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="Nikol">
    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="False" 
        OnCreatedUser="RegisterUser_CreatedUser" BackColor="#F7F7DE" 
        BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="10pt" Height="200px" Width="200px" 
        style="margin-right: 31px" 
        InvalidPasswordErrorMessage="Должина на лозинка минимум: {0}. Задолжителни се не алфанумерички карактери: {1}.">
        <FinishNavigationTemplate>
            <asp:Button ID="FinishPreviousButton" runat="server" BackColor="#00FF80" 
                BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" 
                ForeColor="#284775" Text="Previous" />
            <asp:Button ID="FinishButton" runat="server" BackColor="#00FF80" 
                BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                CommandName="MoveComplete" Font-Names="Verdana" ForeColor="#284775" 
                Text="Finish" />
        </FinishNavigationTemplate>
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" 
            HorizontalAlign="Center" />
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#284775" />
        <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#284775" />
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        <WizardSteps>
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                <ContentTemplate>
                    <table style="font-family:Verdana;font-size:100%;height:500px;width:444px;" 
                        align="center">
                        <tr>
                            <td align="center" colspan="2" 
                                style="color:White;background-color:#6B696B;font-weight:bold;" 
                                height="50px">
                                Тука извршете регистрaција на<br /> &nbsp;Вашата Корисничка Сметка</td>
                        </tr>
                        
                         <tr>
                            <td align="left">
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="Ime">Име и Презиме:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Ime" runat="server" Height="25px" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="User Name is required.-Потребен е Внес на Вашето Име и Презиме" 
                                    ToolTip="User Name is required." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>

                        </tr>
                        
                        
                        <tr>
                            <td align="left">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Корисничко Име:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server" Height="25px" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="Потребно е корисничко име" 
                                    ToolTip="User Name is required." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>

                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Лозинка:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" Height="25px" 
                                    Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password" ErrorMessage="Потребна е Лозинка" 
                                    ToolTip="Password is required." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword">Потврди Лозинка:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" 
                                    Height="25px" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" 
                                    ErrorMessage="Потребна е потврда на Лозинката." 
                                    ToolTip="Confirm Password is required." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server" Height="25px" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="Потребен е внес на е-маил" 
                                    ToolTip="E-mail is required." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Сигурносно Прашање:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server" Height="25px" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                    ControlToValidate="Question" ErrorMessage="Потребно е прашање за сигурност" 
                                    ToolTip="Security question is required." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Сигурносен Одговор:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server" Height="25px" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                    ControlToValidate="Answer" ErrorMessage="Потребен е одговор за сигурност." 
                                    ToolTip="Security answer is required." ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="Лозинките мора да се софпаѓаат" 
                                    ValidationGroup="RegisterUser"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
                <CustomNavigationTemplate>
                    <table border="0" cellspacing="5" style="width:100%;height:100%;">
                        <tr align="right">
                            <td align="center" colspan="0">
                                <asp:Button ID="StepNextButton" runat="server" BackColor="#FFFBFF" 
                                    BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                                    CommandName="MoveNext" Font-Names="Verdana" ForeColor="#284775" 
                                    Text="Креирај Корисник" ValidationGroup="RegisterUser" 
                                    onclick="StepNextButton_Click" />
                                   
                                   <asp:Button ID="Button1" runat="server" BackColor="#FFFBFF" 
                                    BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                                    CommandName="MoveNext" Font-Names="Verdana" ForeColor="#284775" 
                                    Text="Почетна страна" 
                                    onclick="StepBackButton_Click" /> 
                            </td>
                        </tr>
                    </table>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
<asp:CompleteWizardStep runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#284775" />
        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" 
            ForeColor="#FFFFFF" />
        <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" 
            VerticalAlign="Top" />
        <StepStyle BorderWidth="0px" />
    </asp:CreateUserWizard>
</asp:Content>
