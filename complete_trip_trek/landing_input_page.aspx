<%@ Page Title="" Language="C#" MasterPageFile="~/trek.Master" AutoEventWireup="true" CodeBehind="landing_input_page.aspx.cs" Inherits="complete_trip_trek.landing_input_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }

        /* Main Container */
        .main-container {
            padding-top: 154px;
            display: flex;
            gap: 20px;
            margin: 20px;
        }

        /* Sidebar CSS */
        .sidebar {
            flex: 1;
            max-width: 200px;
            background: #fff;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        .sidebar h3 {
            margin-bottom: 15px;
            font-size: 1.2rem;
            color: #333;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            margin: 10px 0;
        }

        .sidebar ul li a {
            text-decoration: none;
            color: #6a11cb;
            font-size: 1rem;
            transition: color 0.3s ease;
        }

        .sidebar ul li a:hover {
            color: #2575fc;
        }

        /* Cards Section */
        .cards-container {
            flex: 3;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .card {
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
        }

        .card-details {
            padding: 15px;
            text-align: center;
        }

        .card-details h4 {
            font-size: 1.1rem;
            margin-bottom: 10px;
            color: #6a11cb;
        }

        .card-details p {
            font-size: 0.9rem;
            color: #555;
        }

        .card-details button {
            margin-top: 10px;
            padding: 8px 15px;
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            color: white;
            border: none;
            border-radius: 20px;
            cursor: pointer;
            font-size: 0.9rem;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        .card-details button:hover {
            background: linear-gradient(135deg, #2575fc 0%, #6a11cb 100%);
            transform: scale(1.05);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-container">
        <!-- Left Sidebar -->
        <div class="sidebar">
            <h3>Filters</h3>
            <ul>
                <li><a href="#">Location</a></li>
                <li><a href="#">Price</a></li>
                <li><a href="#">Categories</a></li>
                <li><a href="#">Length</a></li>
            </ul>
        </div>

        <!-- Cards Section -->
        <div class="cards-container">
            <!-- Card 1 -->
            <div class="card">
                <img src="image1.jpg" alt="Trip 1">
                <div class="card-details">
                    <h4>Goa's Adventure</h4>
                    <p>Explore the beauty of the beaches.</p>
                    <button onclick="showInfo('Himalayas', 'Experience the serene beauty of the Himalayan range. Perfect for adventure lovers!')">Show Info</button>
                </div>
            </div>

            <!-- Card 2 -->
            <div class="card">
                <img src="image2.jpg" alt="Trip 2">
                <div class="card-details">
                    <h4>Snow Manali</h4>
                    <p>Relax at the snow park.</p>
                    <button onclick="showInfo('Beach Paradise', 'Enjoy golden sands, blue waters, and stunning sunsets!')">Show Info</button>
                </div>
            </div>

            <!-- Card 3 -->
            <div class="card">
                <img src="image3.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Jaipur the pink city</h4>
                    <p>Discover vibrant city life.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 4 -->
            <div class="card">
                <img src="image4.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Shimla Hills</h4>
                    <p>Feel the life in hills.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 6 -->
            <div class="card">
                <img src="image6.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Rishikesh</h4>
                    <p>The land of lords.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 7 -->
            <div class="card">
                <img src="image7.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>LEH Ladakh</h4>
                    <p>Discover the freedom of earth.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 8 -->
            <div class="card">
                <img src="image8.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Ooty</h4>
                    <p>Find the mountains.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 9 -->
            <div class="card">
                <img src="image9.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Kolkata</h4>
                    <p>Live in vintage time.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 10 -->
            <div class="card">
                <img src="image10.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Mumbai</h4>
                    <p>Fight in hustle.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 11 -->
            <div class="card">
                <img src="image11.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Delhi</h4>
                    <p>Capital of India.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 12 -->
            <div class="card">
                <img src="image12.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Kerala</h4>
                    <p>Feel the fresh air.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 13 -->
            <div class="card">
                <img src="image13.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Darjelling</h4>
                    <p>Live in between Farms.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 14 -->
            <div class="card">
                <img src="image14.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Nainital</h4>
                    <p>Discover vibrant fresh life.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 15 -->
            <div class="card">
                <img src="image15.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Coorg</h4>
                    <p>Way to the Heaven</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 16 -->
            <div class="card">
                <img src="image16.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Andaman</h4>
                    <p>Play in oceans</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 17 -->
            <div class="card">
                <img src="image17.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Mount Abu</h4>
                    <p>Height light.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 18 -->
            <div class="card">
                <img src="image18.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Kodaikanau</h4>
                    <p>House full in mountains</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 19 -->
            <div class="card">
                <img src="image19.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Mysore</h4>
                    <p>Bright lights .</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>

            <!-- Card 20  -->
            <div class="card">
                <img src="image20.jpg" alt="Trip 3">
                <div class="card-details">
                    <h4>Varanasi</h4>
                    <p>Feel the land of religion.</p>
                    <button onclick="showInfo('City Adventures', 'Explore the hustle and bustle of the city with its culture and food!')">Show Info</button>
                </div>
            </div>


            <!-- Add more cards manually here -->
        </div>

        <!-- Right Sidebar -->
        <div class="sidebar">
            <h3>More Options</h3>
            <ul>
                <li><a href="#">Popular Trips</a></li>
                <li><a href="#">Latest Packages</a></li>
                <li><a href="#">Budget Friendly</a></li>
                <li><a href="#">Adventure Trips</a></li>
            </ul>
        </div>
    </div>

    <script>
        // Function to handle "Show Info" button clicks
        function showInfo(title, description) {
            alert("Trip Title: " + title + "\n\nDetails: " + description);
        }
    </script>
</asp:Content>