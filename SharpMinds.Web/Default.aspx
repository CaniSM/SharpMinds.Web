<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SharpMinds.Web._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">

    <div class="banner">
        <div class="container">
            <h1>#Minds</h1>
            <p>IT Consultancy, webdesign, and solid back to front-end solutions for forward-thinking people.</p>
            <div class="btn btn-large btn-info" onclick="location.href='mailto:cani@sharpminds.dk'">
                Contact Us
            </div>
            <h2 id="moreToCome">More info coming soon!
            </h2>
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
</asp:Content>
