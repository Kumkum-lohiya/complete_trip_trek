<%@ Page Title="Login/Sign Up" Language="C#" MasterPageFile="~/trek.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="complete_trip_trek.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: #f8f9fa;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            display: flex;
            width: 900px;
            height: 600px;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            background: #fff;
        }

        .image-section {
            flex: 1;
            background: linear-gradient(to bottom right, #a8dadc, #457b9d);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .image-section img {
            max-width: 90%;
            max-height: 90%;
            border-radius: 15px;
        }

        .form-section {
            flex: 1.5;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 30px;
            position: relative;
        }

        .form-section h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #457b9d;
        }

        .form {
            width: 100%;
            display: none;
        }

        .form.active {
            display: block;
        }

        .form-group {
            margin-bottom: 20px;
            width: 100%;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
            color: #666;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            background: #f8f9fa;
        }

        .form-buttons button {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 5px;
            background: #457b9d;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s;
        }

        .form-buttons button:hover {
            background: #1d3557;
            transform: scale(1.05);
        }

        .toggle-buttons {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .toggle-buttons button {
            margin: 0 5px;
            padding: 8px 16px;
            background: #ccc;
            border: none;
            color: #fff;
            border-radius: 20px;
            font-size: 14px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .toggle-buttons button.active {
            background: #1d3557;
        }

        .toggle-buttons button:hover {
            background: #457b9d;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="panelLoginSignup" runat="server" CssClass="container">
        <!-- Image Section -->
        <div class="image-section">
            &nbsp;<asp:Image ID="Image2" runat="server" Height="1000px" ImageUrl="~/signup.jpg" />
        </div>

        <!-- Form Section -->
        <div class="form-section">
            <!-- Toggle Buttons -->
            <div class="toggle-buttons">
                <button type="button" class="active" onclick="showLogin()">Sign In</button>
                <button type="button" onclick="showSignUp()">Sign Up</button>
            </div>

            <!-- Login Form -->
            <div id="loginForm" class="form active">
                <h2>Sign In</h2>
                <div class="form-group">
                    <label for="loginEmail">Email</label>
                    <asp:TextBox ID="loginEmail" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="loginPassword">Password</label>
                    <asp:TextBox ID="loginPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                </div>
                <div class="form-buttons">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-login" OnClick="btnLogin_Click" />
                </div>
            </div>

            <!-- Sign Up Form -->
            <div id="signUpForm" class="form">
                <h2>Sign Up</h2>
                <div class="form-group">
                    <label for="signupName">Name</label>
                    <asp:TextBox ID="signupName" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="signupEmail">Email</label>
                    <asp:TextBox ID="signupEmail" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="signupPassword">Password</label>
                    <asp:TextBox ID="signupPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                </div>
                <div class="form-buttons">
                    <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="btn-signup" OnClick="btnSignUp_Click" />
                </div>
            </div>
        </div>
    </asp:Panel>

    <!-- JavaScript -->
    <script>
        function showLogin() {
            document.getElementById('loginForm').classList.add('active');
            document.getElementById('signUpForm').classList.remove('active');
            document.querySelectorAll('.toggle-buttons button')[0].classList.add('active');
            document.querySelectorAll('.toggle-buttons button')[1].classList.remove('active');
        }

        function showSignUp() {
            document.getElementById('signUpForm').classList.add('active');
            document.getElementById('loginForm').classList.remove('active');
            document.querySelectorAll('.toggle-buttons button')[1].classList.add('active');
            document.querySelectorAll('.toggle-buttons button')[0].classList.remove('active');
        }
    </script>
</asp:Content>