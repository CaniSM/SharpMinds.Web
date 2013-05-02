<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SharpMinds.Web._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">

    <div class="banner">
        <div class="container">
            <h1 class="text-left">#Minds</h1>
            <hr class="style-six" />
            <p class="text-left">IT Consultancy, webdesign, and solid back to front-end solutions for forward-thinking people.</p>
            <hr class="style-six" />
            <a class="btn btn-large btn-inverse" href="mailto:cani@sharpmines.dk" target="_blank">Contact Us</a>
            <a class="btn btn-large btn-danger" id="alert_button" href="http://www.google.com/intl/da/chrome/browser/">DANGER: STOP USING INTERNET EXPLORER BELOW V.10+</a>
        </div>
    </div>
    <![if !IE]>
   <script>
       $('#alert_button').hide();
   </script>
    <![endif]>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="clear-fix" style="text-align: center;">
        <h4 class="badge badge-inverse">We're just getting ready - More to come soon!</h4>
    </div>
</asp:Content>
