<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Marathonga.aspx.cs" Inherits="Marathonga.Forms.TopActionBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <!-- Other stylesheets and title -->
</head>
<title></title>
<style>
    * {
        padding: 0px;
        margin: 0px
    }
    /* Background Colors */
    body {
        background-color: #02071c;
    }

    .bg-dark {
        background-color: #02071c;
    }

    .bg-blue {
        background-color: #415784;
    }

    .bg-green {
        background-color: #72a200;
    }

    .bg-login {
        background-color: #0150f3;
    }

    .bg-register {
        background-color: #fda601;
    }

    /* Text Colors */
    .text-white {
        color: #ffffff;
    }

    /* Spacing */
    .h-66px {
        height: 66px;
    }

    .py-5px {
        padding-top: 5px;
        padding-bottom: 5px;
    }

    .px-10px {
        padding-left: 10px;
        padding-right: 10px;
    }

    .mr-20px {
        margin-right: 20px;
    }

    .mx-4 {
        margin-left: 1rem;
        margin-right: 1rem;
    }

    .pl-8 {
        padding-left: 2rem;
    }

    /* Font Size */
    .text-sm {
        font-size: 0.875rem;
    }

    .text-xs {
        font-size: 0.75rem;
    }

    /* Rounded Corners */
    .rounded {
        border-radius: 4px;
    }

    .rounded-full {
        border-radius: 9999px;
    }

    /* Flexbox */
    .flex {
        display: flex;
    }

    .items-center {
        align-items: center;
    }

    .justify-evenly {
        justify-content: space-evenly;
    }

    .space-x-4 > * + * {
        margin-left: 1rem;
    }

    .gap-2 > * + * {
        margin-left: 0.5rem;
    }

    /* Positioning */
    .relative {
        position: relative;
    }

    .absolute {
        position: absolute;
    }

    .right-2 {
        right: 0.5rem;
    }

    .left-2 {
        left: 0.5rem;
    }

    /* Outline */
    .outline-none {
        outline: none;
    }

    /* Border */
    .border {
        border-width: 1px;
        border-style: solid;
    }

    .border-white {
        border-color: #ffffff;
    }

    /* Divider */
    .h-6 {
        height: 1.5rem;
    }

    .w-1px {
        width: 1px;
    }

    /* Input Height */
    .h-30px {
        height: 30px;
    }

    /* Miscellaneous */
    .underline {
        text-decoration: underline;
    }

    .items-start {
        align-items: start;
    }

    .flex-col {
        flex-direction: column;
    }

    .px-10px {
        padding: 3px 10px;
    }
    /* Divider Line */
    .divider {
        width: 1px;
        height: 1.5rem; /* This is equivalent to Tailwind's h-6 */
        background-color: #ffffff;
        margin: 0 1rem; /* This is equivalent to Tailwind's mx-4 */
    }

    body, html {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }

    .navbar {
        background-color: #0a1849;
        display: flex;
        align-items: center;
        justify-content: space-evenly;
        /*    padding: 16px;*/
        height: 80px;
        position: relative;
    }

    .logo-background {
        position: absolute;
        left: 65px;
    }

    .navbar-menu {
        display: flex;
        height: 80px;
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .menu-item {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-evenly;
        color: white;
        height: 100%;
        margin: 0 8px;
        padding: 8px;
        cursor: pointer;
        transition: all 0.3s;
    }

        .menu-item:hover {
            background: radial-gradient(circle at top center, rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0));
        }

        .menu-item i {
            margin-top: 8px;
            color: #f5f5f5;
        }

    .left-65 {
        left: 65px;
    }

    .text-sm {
        font-size: small;
    }
    /* Container for the carousel */
    .carousel-container {
        position: relative;
        width: 100%;
        height: 480px;
        overflow: hidden;
    }

    /* Carousel inner container to hold the slides */
    .carousel-inner {
        display: flex;
        width: 100%;
        height: 100%;
        position: relative;
    }

    /* Individual slide styles */
    .carousel-slide {
        position: absolute;
        width: 100%;
        height: 100%;
        transition: transform 1s ease-in-out; /* Animation for sliding */
        opacity: 0; /* Hide all slides initially */
    }

        /* Make active slide visible */
        .carousel-slide.active {
            opacity: 1;
        }

    /* Carousel image styling */
    .carousel-image {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    /* Indicator styles */
    .carousel-indicators {
        position: absolute;
        z-index: 30;
        bottom: 5%;
        left: 50%;
        transform: translateX(-50%);
        display: flex;
        gap: 0.75rem;
    }

    .indicator {
        width: 12px;
        height: 12px;
        border-radius: 50%;
        background-color: #d1d5db; /* Gray color */
        cursor: pointer;
    }

    .indicator-active {
        background-color: #f97316; /* Orange color */
    }
    /* Container styles */
    .announcement-container {
        background-color: #0c2156;
        color: white;
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 80vw;
        height: 40px;
        margin: auto;
        border-radius: 8px;
        z-index: 999;
        position: fixed;
    }

        .announcement-container .title {
            display: flex;
            align-items: center;
        }

            /* Icon style */
            .announcement-container .title .icon {
                width: 20px;
                height: 20px;
                background-color: white;
                border-radius: 50%;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-right: 8px;
            }

        /* Ticker container style */
        .announcement-container .ticker-container {
            width: 70%;
            background-color: #000418;
            height: 30px;
            overflow: hidden;
            margin-top: 8px;
            margin-bottom: 8px;
            border-radius: 8px;
            padding: 0 8px;
        }

        .announcement-container .announcement-list {
            list-style: none;
            padding: 0;
            margin: 0;
            animation: scroll 15s linear infinite;
        }

    /* Animation for the scrolling ticker */
    @keyframes scroll {
        0% {
            transform: translateY(0);
        }

        100% {
            transform: translateY(-100%);
        }
    }

    /* Each list item in the ticker */
    .announcement-container .announcement-list li {
        height: 30px;
        display: flex;
        align-items: center;
        padding-left: 10px;
    }

    /* Indicator text styles */
    .announcement-container .date {
        font-size: 0.875rem;
        width: 250px;
    }
    justify-center{
        justify-content:center;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="bg-dark h-66px p-4 flex items-center justify-evenly space-x-4">
            <div class="flex items-center">
                <!-- First Button -->
                <button class="bg-blue text-white py-5px px-10px rounded flex items-center relative">
                    <span class="mr-20px">Live chat</span>
                    <i class="fa-solid fa-comment-dots absolute right-2" style="color: #ffffff;"></i>
                </button>

                <!-- Divider Line -->
                <div class="divider"></div>

                <!-- Second Button -->
                <button class="bg-green text-white py-5px px-10px rounded flex items-center relative">
                    <i class="mr-2 fa-brands fa-android" style="color: #ffffff;"></i>
                    <span>Download APK</span>
                </button>

                <!-- Divider Line -->
                <div class="divider"></div>

                <!-- Mobile Icon Button -->
                <i class="fa-solid fa-mobile-screen-button text-white mr-2"></i>

                <!-- Divider Line -->
                <div class="divider"></div>

                <i class="fa-solid fa-globe ml-2 text-white"></i>
            </div>
            <div class="flex gap-2 items-start">
                <!-- Username Field -->
                <div class="relative flex items-center">
                    <i class="fa-solid fa-user absolute left-2" style="color: #ffffff;"></i>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="bg-dark border border-white pl-8 text-white text-sm py-2 rounded outline-none w-full h-30px" Placeholder="Username"></asp:TextBox>
                </div>

                <!-- Password Field and Forget Password Link -->
                <div class="flex flex-col items-start">
                    <div class="relative flex items-center">
                        <i class="fa-solid fa-lock absolute left-2" style="color: #ffffff;"></i>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="bg-dark border border-white pl-8 text-white text-sm py-2 rounded outline-none w-full h-30px" Placeholder="Password"></asp:TextBox>
                    </div>
                    <!-- Forget Password Link -->
                    <asp:HyperLink ID="lnkForgetPassword" runat="server" CssClass="text-white text-xs mt-1 underline" NavigateUrl="#">Forget Password?</asp:HyperLink>
                </div>

                <!-- Login and Register Buttons -->
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="text-white bg-login rounded-full px-10px" />
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="text-white bg-register rounded-full px-10px" />


            </div>
        </div>
        <div class="navbar">
            <div class="relative">
                <img src="https://dsuown9evwz4y.cloudfront.net/Images/nexus-alpha/blue/desktop/layout/logo-background.png?v=20241103-1" class="logo-background" alt="" />

                <picture class="relative left-65">
                    <img alt="Logo" loading="lazy" src="https://api2-w88.imgnxb.com/images/w88/logo_96c00afb-2339-4071-aabc-5685e6905423_1730802555497.png" />
                </picture>
            </div>


            <div>
                <ul class="navbar-menu">
                    <li class="menu-item">
                        <i class="fa-solid fa-fire-flame-curved"></i>
                        <span class="text-sm">Hot Games</span>
                    </li>
                    <li class="menu-item">
                        <i class="fa-solid fa-check-to-slot"></i>
                        <span class="text-sm">Slots</span>
                    </li>
                    <li class="menu-item">
                        <i class="fa-regular fa-circle"></i>
                        <span class="text-sm">Live Casino</span>
                    </li>
                    <li class="menu-item">
                        <i class="fa-solid fa-table-cells-large"></i>
                        <span class="text-sm">Lottery</span>
                    </li>
                    <li class="menu-item">
                        <i class="fa-solid fa-futbol"></i>
                        <span class="text-sm">Sports</span>
                    </li>
                    <li class="menu-item">
                        <i class="fa-solid fa-rocket"></i>
                        <span class="text-sm">Crash game</span>
                    </li>
                    <li class="menu-item">
                        <i class="fa-solid fa-gamepad"></i>
                        <span class="text-sm">Arcade</span>
                    </li>
                    <li class="menu-item">
                        <i class="fa-solid fa-diamond"></i>
                        <span class="text-sm">Poker</span>
                    </li>
                    <li class="menu-item">
                        <i class="fa-solid fa-globe"></i>
                        <span class="text-sm">E-Sport</span>
                    </li>
                    <li class="menu-item">
                        <i class="fa-brands fa-the-red-yeti"></i>
                        <span class="text-sm">CockFight</span>
                    </li>
                    <li class="menu-item">
                        <i class="fa-solid fa-gift"></i>
                        <span class="text-sm">Promotion</span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="carousel-container">
            <div class="carousel-container">
                <!-- Carousel slides -->
                <div class="carousel-inner" id="carouselInner">
                    <% 
                        string[] images = new string[] {
                        "https://api2-w88.imgnxb.com/images/w88/en_cbd_01078bef-dcea-4c5f-847b-49d39b201b2d_1657773322230.png",
                        "https://api2-w88.imgnxb.com/images/w88/en_cbd_7fbe3067-e2c7-4558-96c4-7cd4e3e57a57_1722078243043.png",
                        "https://api2-w88.imgnxb.com/images/w88/en_cbd_aeaac818-4dd0-4e95-bfe1-167ab51ef39b_1672680818597.png",
                        "https://dsuown9evwz4y.cloudfront.net/Images/banners/home/pp-mahjong-wins-3-black-scatter-desktop.png",
                        "https://api2-w88.imgnxb.com/images/w88/en_cbd_40f33b1c-a3d8-47ac-931e-6d8c767cdfde_1657773265827.png"
                    };

                        for (int i = 0; i < images.Length; i++)
                        {
                            Response.Write($"<div class='carousel-slide' id='slide{i}'>");
                            Response.Write($"<img src='{images[i]}' class='carousel-image' alt='Slide {i + 1}' />");
                            Response.Write("</div>");
                        }
                %>
                </div>

                <!-- Carousel indicators -->
                <div class="carousel-indicators">
                    <% 
                        for (int i = 0; i < images.Length; i++)
                        {
                            string activeClass = i == 0 ? "indicator-active" : "";
                            Response.Write($"<div class='indicator {activeClass}' onclick='changeSlide({i})'></div>");
                        }
                %>
                </div>
            </div>
            <!-- Left part with Icon and Text -->
            <div data-section="title">
                <span class="h-[20px] w-[20px] rounded-full bg-white p-0.5 mx-1">
                    <i class="fa-solid fa-volume-high" style="color: #04070b;"></i>
                </span>
                Notice
 
            </div>

            <div class="flex " style="justify-content:center;">
                <div class="announcement-container"">
                    <!-- Title and icon section -->
                    <div class="title">
                        <div class="icon" style="padding:2px;">
                            <i class="fa-solid fa-volume-high" style="color: #04070b;"></i>
                        </div>
                        <span>Notice</span>
                    </div>

                    <!-- Ticker section -->
                    <div class="ticker-container">
                        <div class="ticker-inner">
                            <ul class="announcement-list" id="announcement-list">
                                <li>Scheduled Maintenance: Crowd Play on 2023-11-30 from 7:00 AM until 2025-06-02 6:30 PM (GMT+7). During this time, Crowd Play will not be able to play. Sorry for any inconvenience caused.</li>
                                <li>Scheduled Maintenance: ESports Bull on 2024-05-20 from 10:00 AM until 2025-06-02 11:00 PM (GMT+7). During this time, ESports Bull will not be able to play. Sorry for any inconvenience caused.</li>
                                <li>Scheduled Maintenance: CMD on 2024-11-08 from 11:30 AM until 5:00 PM (GMT+7). During this time, CMD will not be able to play. Sorry for any inconvenience caused.</li>
                                <li>Scheduled Maintenance: Spinix on 2024-10-02 from 12:00 AM until 2024-12-31 11:59 PM (GMT+7). During this time, Spinix will not be able to play. Sorry for any inconvenience caused.</li>
                                <li>Akses Link Alternatif WIN88 : ln.run/win88</li>
                                <li>Scheduled Maintenance: Balak Play on 2024-11-08 from 8:30 AM until 3:30 PM (GMT+7). During this time, Balak Play will not be able to play. Sorry for any inconvenience caused.</li>
                                <li>Scheduled Maintenance: Crowd Play on 2023-11-30 from 7:00 AM until 2025-06-02 6:30 PM (GMT+7). During this time, Crowd Play will not be able to play. Sorry for any inconvenience caused.</li>
                                <li>Scheduled Maintenance: ESports Bull on 2024-05-20 from 10:00 AM until 2025-06-02 11:00 PM (GMT+7). During this time, ESports Bull will not be able to play. Sorry for any inconvenience caused.</li>
                                <li>Scheduled Maintenance: CMD on 2024-11-08 from 11:30 AM until 5:00 PM (GMT+7). During this time, CMD will not be able to play. Sorry for any inconvenience caused.</li>
                                <li>Scheduled Maintenance: Spinix on 2024-10-02 from 12:00 AM until 2024-12-31 11:59 PM (GMT+7). During this time, Spinix will not be able to play. Sorry for any inconvenience caused.</li>
                                <li>Akses Link Alternatif WIN88 : ln.run/win88</li>
                                <li>Scheduled Maintenance: Balak Play on 2024-11-08 from 8:30 AM until 3:30 PM (GMT+7). During this time, Balak Play will not be able to play. Sorry for any inconvenience caused.</li>
                            </ul>
                        </div>
                    </div>

                    <!-- Date section -->
                    <div class="date">08/11/2024 (Fri) 12:16 (GMT+07)</div>
                </div>


            </div>

            <script>
                let activeIndex = 0;
                const slides = document.querySelectorAll('.carousel-slide');
                const indicators = document.querySelectorAll('.indicator');

                // Function to change the active slide
                function changeSlide(index) {
                    activeIndex = index;
                    updateCarousel();
                }

                // Function to update the carousel (move to next slide)
                function updateCarousel() {
                    slides.forEach((slide, index) => {
                        slide.classList.remove('active');
                        if (index === activeIndex) {
                            slide.classList.add('active');
                        }
                    });

                    indicators.forEach((indicator, idx) => {
                        if (idx === activeIndex) {
                            indicator.classList.add('indicator-active');
                        } else {
                            indicator.classList.remove('indicator-active');
                        }
                    });
                }

                // Function to auto-change slides every 3 seconds
                setInterval(() => {
                    activeIndex = (activeIndex + 1) % slides.length;
                    updateCarousel();
                }, 3000);

                // Initialize the carousel to show the first slide
                updateCarousel();
        </script>
    </form>
</body>
</html>
