<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SharpMinds.Web.Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">

    <div class="banner">
        <div class="container">
            <h1 class="text-left">#Minds</h1>
            <hr class="style-six" />
            <p class="text-left">IT Consultancy, webdesign, and solid back to front-end solutions for forward-thinking people.</p>
            <hr class="style-six" />
            <a class="btn btn-large btn-inverse" href="#myModal" role="button" data-toggle="modal">Contact Us</a>
            <div class="alert alert-block alert-error fade in" id="alert_button">
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <h4>LIFE THREATENING DANGER</h4>
                <p>
                    STOP USING INTERNET EXPLORER BELOW V.10+
                </p>
                <p>
                    <a class="btn btn-danger" href="http://www.google.com/intl/da/chrome/browser/">Fix it now!</a>
                </p>
            </div>
        </div>
    </div>
    <%-- Contact Modal --%>
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Contact Us</h3>
        </div>
        <div class="modal-body">
            <%--<label>You info</label>--%>
            <div class="row">
                <div class="span5">
                    <div class="span3 input-prepend">
                        <span class="add-on">Name</span>
                        <input id="contact_Name" runat="server" type="text" class="input-xlarge" placeholder="E.g. Duke Nukem" />
                    </div>
                    <div class="span3 input-prepend">
                        <span class="add-on">Phone</span>
                        <input id="contact_PhoneNumber" runat="server" type="text" class="" placeholder="E.g. +45 1234 5678" />
                    </div>
                    <div class="span3 input-prepend">
                        <span class="add-on">E-mail</span>
                        <input id="contact_Email" class="input-xlarge" runat="server" type="email" placeholder="E.g. duke@seriousbusiness.com" />
                    </div>
                </div>
            </div>
            <label>Message</label>
            <input id="contact_Subject" runat="server" type="text" class="input-xlarge span5" placeholder="Subject..." />
            <textarea id="contact_Message" runat="server" class="input-xlarge span5" style="resize: none;" rows="7" placeholder="Insert message..."></textarea>
        </div>
        <div class="modal-footer">
            <button aria-hidden="true" class="btn btn-inverse" data-dismiss="modal">Cancel</button>
            <asp:Button CssClass="btn btn-primary" id="sendMessageBtn" onclick="sendMessageBtn_Click" runat="server" Text="Send message"></asp:Button>
            <a class="btn btn-link" href="mailto:cani@sharpminds.dk" target="_blank">Send regular email</a>
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
        <h4 class="badge">We're just getting ready - More to come soon!</h4>
    </div>
</asp:Content>
