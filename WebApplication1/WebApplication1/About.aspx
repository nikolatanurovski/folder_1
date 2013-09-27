<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>



<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style7
        {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        &nbsp;</h2>
        <div id="accordion">
<h3>Вовед</h3>
<div class="style7">

    Апликацијата за <strong>Менаџирање на спортски натпревари </strong>представува 
    обид да се представи еден начин на водење на евиденција за ентитети кои 
    учествуваат во спорски натпревари.Апликацијата се бави со водење на евиденција 
    за членови кои членуват во соодветни клубови, понатаму тие клубови можат да 
    учествуваат на соодветни турнири.На тие турнири можат да бидат постигнати 
    соодветни резултати кои се чуваат и се прикажуваат преку апликацијата.<br />
    <br />
    Во апликацијата се менаџираат податоци за Членови,Турнири,Клубови и 
    Резултати.Над овие ентитети се вршат основните операции за менаџирање со 
    податоци како Внес,Промена,Бришење и Прикажување.<br />
    Во апликацијата за користење на секој специфичен дел е вметнато и кратко 
    упатство за користење.<br />
    <br />
&nbsp;<br />
    <br />
</div>


<h3>Промени лозинка</h3>
<div class="style7">
<p>Доколку сте најавени на системот со ваше корисничко име ио лозинка,<br />
    Вашите кориснички информации можете да ги промените на линкот подолу.</p>
<a href="Account/ChangePassword.aspx">Променете ја Вашата лозинка</a>
 
</div>

</div>
    </asp:Content>
