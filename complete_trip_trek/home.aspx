<%@ Page Title="" Language="C#" MasterPageFile="~/trek.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="complete_trip_trek.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /* Slideshow Styles */
        .slideshow-container {
            max-width: 100%;
            position: relative;
            margin: auto;
            height: 1202px;
            overflow: hidden;
        }

        .slide {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-size: cover;
            background-position: center;
            opacity: 0;
            transition: opacity 1.5s ease-in-out;
        }

        .slide.active {
            opacity: 1;
        }

        .tagline {
            position: absolute;
            bottom: 55%;
            left: 5%;
            color: white;
            font-family: 'Arial', sans-serif;
            font-size: 3rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
            max-width: 60%;
            transition: opacity 1.5s ease-in-out;
            white-space: nowrap;
            overflow: hidden;
            width: 0;
        }

        .plan-trip-btn {
            position: absolute;
            bottom: 45%;
            left: 5%;
            padding: 20px 40px;
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            color: white;
            border: none;
            border-radius: 50px;
            font-size: 1.5rem;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .plan-trip-btn:hover {
            transform: scale(1.05);
            background: linear-gradient(135deg, #2575fc 0%, #6a11cb 100%);
            box-shadow: 0 6px 20px rgba(0,0,0,0.3);
        }

        /* Budget Input Section Styles */
        .budget-input-container {
            position: absolute; /* Position it over the image */
            top: 60%; /* Adjust the vertical position */
            right: 5%; /* Align it to the right side */
            transform: translateX(0); /* Remove centering transform */
            margin: 30px;
            max-width: 400px; /* Adjust the max width */
            background: rgba(240, 244, 248, 0.9); /* Light background with slight transparency */
            color: #333; /* Darker text for contrast */
            padding: 20px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1.5s ease-in-out;
        }

        .budget-input-container h1 {
            font-size: 2rem;
            margin-bottom: 10px;
            color: #6a11cb; /* Light purple color */
        }

        .budget-input-container input {
            width: 80%;
            padding: 10px;
            margin: 15px 0;
            border: 1px solid #ccc;
            border-radius: 10px;
            font-size: 1rem;
            outline: none;
        }

        .budget-input-container input:focus {
            border-color: #2575fc; /* Lighter blue for focus */
            box-shadow: 0 0 10px #2575fc;
        }

        .budget-input-container button {
            padding: 10px 20px;
            background: linear-gradient(45deg, #a66cff, #ffafcc);
            border: none;
            border-radius: 50px;
            color: #fff;
            font-size: 1rem;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .budget-input-container button:hover {
            transform: scale(1.1);
            box-shadow: 0 10px 20px rgba(166, 108, 255, 0.6);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Slideshow Section -->
    <asp:Panel ID="Panel2" runat="server">
        <div class="slideshow-container" id="slideshowContainer">
            <div class="slide" style="background-image: url('background 1.jpg');">
                <div class="tagline">Your Journey, Our Planning:<br>Explore the World with Ease</div>
            </div>
            <div class="slide" style="background-image: url('background2.jpg');">
                <div class="tagline">Plan Smarter, Travel Better</div>
            </div>
            <div class="slide" style="background-image: url('background 3.jpg');">
                <div class="tagline">Design Your Perfect Trip,<br> Tailored to You</div>
            </div>
            <div class="slide" style="background-image: url('background 4.jpg');">
                <div class="tagline">Making Every Trip Unforgettable,<br> One Plan at a Time</div>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Plan Your Trip" CssClass="plan-trip-btn" OnClick="Button1_Click" />
        </div>
    </asp:Panel>

    <!-- Budget Input Section (Overlayed on the slideshow, aligned right) -->
    <div class="budget-input-container">
        <h1>Enter Your Trip Budget</h1>
        <asp:TextBox ID="BudgetInput" runat="server" placeholder="Enter your budget"></asp:TextBox>
        <asp:Button ID="SubmitBudget" runat="server" Text="Submit Budget" OnClick="SubmitBudget_Click" />
    </div>

    <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            const slides = document.querySelectorAll('.slide');
            const taglines = document.querySelectorAll('.tagline');
            let currentSlide = 0;

            function changeSlide() {
                slides[currentSlide].classList.remove('active');
                taglines[currentSlide].style.width = '0';
                currentSlide = (currentSlide + 1) % slides.length;
                slides[currentSlide].classList.add('active');
                animateTagline(taglines[currentSlide]);
            }

            function animateTagline(taglineElement) {
                taglineElement.style.transition = 'width 5s ease';
                taglineElement.style.width = '60%';
            }

            slides[currentSlide].classList.add('active');
            animateTagline(taglines[currentSlide]);
            setInterval(changeSlide, 5000);
        });
    </script>
</asp:Content>