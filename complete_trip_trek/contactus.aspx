<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/trek.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="complete_trip_trek.contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Body styling */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #2c3e50, #3498db);
            color: #fff;
        }

        /* Contact section styling */
        .contact-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 50px;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Left section with details */
        .contact-info {
            flex: 1;
            padding: 20px;
        }

        .contact-info h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: #f1c40f;
        }

        .contact-info p {
            line-height: 1.8;
            font-size: 1.1em;
        }

        .contact-info i {
            margin-right: 10px;
            color: #2ecc71;
        }

        .contact-info .info-item {
            margin-bottom: 15px;
        }

        /* Right section with form */
        .contact-form {
            flex: 1;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            color: #333;
        }

        .contact-form h2 {
            margin-bottom: 20px;
            font-size: 1.8em;
            color: #3498db;
        }

        .contact-form label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1em;
        }

        .contact-form input:focus, .contact-form textarea:focus {
            border-color: #3498db;
            box-shadow: 0 4px 8px rgba(52, 152, 219, 0.3);
        }

        .contact-form button {
            background: #3498db;
            color: #fff;
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .contact-form button:hover {
            background: #2ecc71;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .contact-container {
                flex-direction: column;
                text-align: center;
            }

            .contact-info, .contact-form {
                flex: unset;
                width: 100%;
                margin-bottom: 30px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-container">
       

        <!-- Left Section -->
        <div class="contact-info">
       

            <h1>Contact Us</h1>
            <div class="info-item">
                <i class="fa fa-map-marker"></i>
                Address: Techno India NJR Institue Of Technology Kaladwas,313003
            </div>
            <div class="info-item">
                <i class="fa fa-phone"></i>
                Phone: +1 507-475-6094
            </div>
            <div class="info-item">
                <i class="fa fa-envelope"></i>
                Email: wrub7d7810e@temporary-mail.net
            </div>
        </div>

        <!-- Right Section (Form) -->
        <div class="contact-form">
        <br />
        <br />
        <br />
        <br />
        <br />
       

            <h2>Send Message</h2>
            <form id="contactForm">
                <label for="name">Full Name</label>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your name"></asp:TextBox>

                <label for="email">Email</label>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your email"></asp:TextBox>

                <label for="subject">Subject</label>
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter subject"></asp:TextBox>

                <label for="message">Message</label>
                <asp:TextBox ID="TextBox4" TextMode="MultiLine" runat="server" placeholder="Write your message"></asp:TextBox>

                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="submit-btn" OnClick="Button1_Click" />
            </form>
        </div>
    </div>
</asp:Content>