<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Marathonga.Forms.TopActionBar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <!-- Other stylesheets and title -->
  <link href="../style/style.css" rel="stylesheet" />
    <title>Marathonga : ASP.NET </title>
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
