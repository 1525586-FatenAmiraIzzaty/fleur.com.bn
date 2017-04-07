<%@ Page Title="Contact | Fleur.com.bn." Language="C#" MasterPageFile="~/FleurMasterPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="_1525586_Fleur_CO5027.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Get in touch</h1>
    <div id="contactForm">
        <h2>Contact Form</h2>
        <p>Fill in the form below and we'll get back to you within 24 hours.</p>
        <div>
            <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtName" placeholder="Your name" label="txtName" Text="Input your name" runat="server"></asp:TextBox>
        </div>
        <div class="warning">
            <asp:RequiredFieldValidator ID="reqNameValidator" runat="server" ErrorMessage="*Name is required." ControlToValidate="txtName"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtEmail" placeholder="Your valid email address" label="txtEmail" Text="Input your email" runat="server"></asp:TextBox>
        </div>
        <div class="warning">
            <asp:RequiredFieldValidator ID="reqEmailValidator" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Email is required."></asp:RequiredFieldValidator>
        </div>
        <div class="warning">
            <asp:RegularExpressionValidator ID="reqExprEmailValidator" runat="server" ErrorMessage="*Invalid email format." ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtSubject" placeholder="Your subject" label="txtSubject" Text="Input your subject" runat="server"></asp:TextBox>
        </div>
        <div class="warning">
            <asp:RequiredFieldValidator ID="reqSubjectValidator" runat="server" ErrorMessage="*Subject is required." ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblMessage" runat="server" Text="Message:"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="txtMessage" placeholder="Your message" label="txtMessage" Text="Input your message" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div class="warning">
            <asp:RequiredFieldValidator ID="reqMessageValidator" runat="server" ErrorMessage="*Message is required." ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
        </div>
        <div id="buttons_onClick">
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
        </div>
        <div>
            <asp:Literal ID="LitResult" runat="server"></asp:Literal>
        </div>
    </div>
    <div id="address">
        <h2>Our Location</h2>
        <h3>Address:</h3>
        <p>Jln Tungku, </p>
        <p class="bottom_para">Negara Brunei Darussalam</p>
        <h3>Opening Hours:</h3>
        <p>Monday - Sunday : 9.00AM - 6.00PM</p>
        <p class="bottom_para">Friday : 9.00AM - 12.00PM, 2.00PM - 6.00PM</p>
        <div id="map">

            <!-- Static map display -->
            <img src="https://api.mapbox.com/styles/v1/mapbox/streets-v10/static/114.931669,4.885731,16.90,0.00,0.00/900x500@2x?access_token=pk.eyJ1IjoiMTUyNTU4Ni1mYXRlbmFtaXJhaXp6YXR5IiwiYSI6ImNqMTRqZzR3NDAwOHgzNG82enJtb2k1aWcifQ.Z90ZApEnbOHHeZ7IrTVmjQ"  alt="Fleur.com.bn is located at Freshco Batu Satu near KFC and Jollibee" />
            <script>

                // This example displays a marker at the center of Australia.
                // When the user clicks the marker, an info window opens.

                function initMap() {
                    var myLatLng = { lat: 4.935710, lng: 114.881227 };
                    var map = new google.maps.Map(document.getElementById('map'), {
                        zoom: 15,
                        center: myLatLng
                    });

                    var contentString = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Fleur.com.bn.</h1>' +
                        '<div id="bodyContent">' +
                        '<p><b>We are located here!</b></p>' +
                        '</div>' +
                        '</div>';

                    var infowindow = new google.maps.InfoWindow({
                        content: contentString
                    });

                    var marker = new google.maps.Marker({
                        position: myLatLng,
                        map: map,
                        title: 'Fleur.com.bn'
                    });
                    marker.addListener('click', function () {
                        infowindow.open(map, marker);
                    });
                }
            </script>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyArNa_y6KM7_ymMw7Hwq0cwd4HMYnl78k4&callback=initMap"
                async="async" defer="defer"></script>
        </div>
    </div>
</asp:Content>
