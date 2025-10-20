<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Responsive Sidebar Tailwind</title>

        <!-- Override manual -->
        <style>
        @media (min-width: 1024px) {
            .lg\:hidden {
            display: none !important;
            }
        }
        </style>

        <!-- Tailwind CSS -->
        <link href="${pageContext.request.contextPath}/assets/css/style_tailwind_adis.css" rel="stylesheet">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body class="bg-slate-400 font-[Poppins]">
        <!-- Header -->
        <div class="p-2.5 mt-0 flex items-center justify-between bg-gray-700 top-0 h-19 
                    lg:rounded-full rounded-tr-3xl">

            <!-- Left: sidebar button -->
            <div class="flex items-center space-x-3 flex-shrink-0">
                <i class="fa fa-bars text-white cursor-pointer block lg:hidden" onclick="toggleSidebar()"></i>
            </div>

            <!-- Jam -->
            <span id="jamDisplay" 
                class="text-sm bg-white px-3 leading-8 w-[90px]
                    rounded-tl-3xl rounded-br-3xl text-center select-none">
                00:00
            </span>

            <!-- Right: bell + profile -->
            <div class="flex items-center space-x-3 flex-shrink-0 relative">
                
                <!-- Bell -->
                <div class="relative">
                    <i class="fa fa-bell p-2 text-white cursor-pointer" onclick="toggleSubmenuBell()"></i>
                    <!-- Submenu bell -->
                    <div id="submenu-bell" 
                        class="hidden absolute right-0 mt-2 w-40  bg-slate-500 text-black text-sm rounded-md shadow-lg z-50">
                        <h1 class="cursor-pointer p-2 text-white hover:text-gray-700  rounded-md mt-1 ">
                            <i class="fa fa-users px-2"></i> 1 Pesan
                        </h1>
                    </div>
                </div>

                <!-- Profile -->
                <div class="relative">
                    <img src="${pageContext.request.contextPath}/assets/img/profile.jpg" 
                        width="30" alt="Profile" 
                        class="rounded-full cursor-pointer" 
                        onclick="toggleSubmenuProfile()">
                    <!-- Submenu profile -->
                    <div id="submenu-profile" 
                        class="hidden absolute right-0 mt-2 w-40 bg-slate-500 text-white text-sm rounded-md shadow-lg z-50">
                        <h1 class="cursor-pointer p-2 hover:bg-gray-700 rounded-md mt-1">
                            <i class="fa fa-users px-2"></i> Social
                        </h1>
                        <h1 class="cursor-pointer p-2 hover:bg-gray-700 rounded-md mt-1">
                            <i class="fa fa-female px-2"></i> Setting
                        </h1>
                        <h1 class="cursor-pointer p-2 hover:bg-gray-700 rounded-md mt-1">
                            <i class="fa fa-sign-out px-2"></i> Logout
                        </h1>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Sidebar -->
        <div class="sidebar fixed top-0 bottom-0 lg:left-0 
            left-[-300px] p-2 duration-300 w-[300px] 
            overflow-y-auto text-center bg-gray-900">
            <div class="text-gray-100 text-xl">
                <div class="p-2.5 mt-1 flex items-center">
                    <img src="${pageContext.request.contextPath}/assets/img/logo.png" 
                        width="40" alt="Profile" 
                        class="rounded-full cursor-pointer">
                    <!-- <i class="fa fa-user text-white px-2 py-1 bg-blue-600 rounded-md"></i> -->
                    <h1 class="font-bold text-gray-100 text-[15px] ml-3">Tailwindbar</h1>
                    <div class="flex justify-between w-full items-center">
                        <span class="text-[15px] ml-4 text-gray-200"></span>
                        <i class="fa fa-times text-white ml-20 cursor-pointer block lg:hidden" onclick="toggleSidebar()"></i>
                    </div>
                </div>

                <hr class="my-2 text-gray-600">

                <!-- Search -->
                <div class="p-2.5 mt-3 flex items-center rounded-md px-4 duration-300
                    cursor-pointer bg-gray-700 text-white">
                    <i class="fa fa-search text-sm"></i>
                    <input type="text" placeholder="Search" 
                        class="text-[15px] ml-4 w-full bg-transparent focus:outline-none">
                </div>

                <!-- Menu Home -->
                <div class="p-2.5 mt-3 flex items-center rounded-md px-4 duration-300
                    cursor-pointer hover:bg-blue-600 text-white">
                    <i class="fa fa-home text-sm"></i>
                    <span class="text-[15px] ml-4 text-gray-200">Home</span>
                </div>

                <!-- Menu Bookmark -->
                <div class="p-2.5 mt-3 flex items-center rounded-md px-4 duration-300
                    cursor-pointer hover:bg-blue-600 text-white">
                    <i class="fa fa-bookmark-o text-sm"></i>
                    <span class="text-[15px] ml-4 text-gray-200">Bookmark</span>
                </div>

                <!-- <hr class="my-2 text-gray-600"> -->

                <!-- Menu Chatbox -->
                <div class="p-2.5 mt-3 flex items-center rounded-md px-4 duration-300
                    cursor-pointer hover:bg-blue-600 text-white" onclick="dropdown('submenu','arrow')">
                    <i class="fa fa-comment-o text-sm"></i>
                    <div class="flex justify-between w-full items-center">
                        <span class="text-[15px] ml-4 text-gray-200">Chatbox</span>
                        <i class="fa fa-chevron-down text-sm transition-transform duration-300" id="arrow"></i>
                    </div>
                </div>

                <!-- Submenu Level 1 -->
                <div class="text-left text-sm font-thin mt-2 w-4/5 mx-auto text-gray-200 hidden" id="submenu">
                    <h1 class="cursor-pointer p-2 hover:bg-gray-700 rounded-md mt-1">
                        <i class="fa fa-facebook px-2"></i> Social
                    </h1>
                    <h1 class="cursor-pointer p-2 hover:bg-gray-700 rounded-md mt-1">
                        <i class="fa fa-female px-2"></i> Personal
                    </h1>
                    <h1 class="cursor-pointer p-2 hover:bg-gray-700 rounded-md mt-1">
                        <i class="fa fa-users px-2"></i> Friends
                    </h1>

                    <!-- Other dengan submenu level 2 -->
                    <div class="cursor-pointer p-2 hover:bg-gray-700 rounded-md mt-1 flex items-center justify-between"
                        onclick="dropdown('submenu2','arrow2')">
                        <span><i class="fa fa-users px-2"></i> Other ..</span>
                        <i class="fa fa-chevron-down text-sm transition-transform duration-300" id="arrow2"></i>
                    </div>

                    <!-- Submenu Level 2 -->
                    <div class="ml-8 mt-2 hidden" id="submenu2">
                        <h1 class="cursor-pointer p-2 hover:bg-gray-700 rounded-md mt-1">
                            <i class="fa fa-cog px-2"></i> Settings
                        </h1>
                        <h1 class="cursor-pointer p-2 hover:bg-gray-700 rounded-md mt-1">
                            <i class="fa fa-info-circle px-2"></i> Info
                        </h1>
                    </div>
                </div>

                <!-- Logout -->
                <!-- <div class="absolute bottom-0 left-0 w-full">
                    <hr class="border-t border-gray-600">
                    <div class="p-2.5 flex items-center rounded-md px-4 duration-300 
                        cursor-pointer text-white group">
                        <i class="fa fa-sign-out text-sm group-hover:text-orange-500"></i>
                        <span class="text-[15px] ml-4 text-gray-200 group-hover:text-orange-500">Logout</span>
                    </div>
                </div> -->
                <!-- Bagian Bawah: Logout -->

                <!-- <hr class="my-2 text-gray-600"> -->
                <div class="p-2.5 flex items-center rounded-md px-4 mt-10 duration-300 
                    cursor-pointer text-white group border-gray-600 border-t">
                    <i class="fa fa-sign-out text-sm group-hover:text-orange-500"></i>
                    <span class="text-[15px] ml-4 text-gray-200 group-hover:text-orange-500">Logout</span>
                </div>
            </div>
        </div>

        <!-- Script -->
        <script type="text/javascript">
            // Reusable dropdown untuk level 1 & level 2
            function dropdown(menuId, arrowId) {
                const submenu = document.getElementById(menuId);
                const arrow = document.getElementById(arrowId);

                if (submenu && arrow) {
                    submenu.classList.toggle("hidden");
                    arrow.classList.toggle("rotate-180");
                }
            }

            // Sidebar toggle (mobile)
            function toggleSidebar() {
                const sidebar = document.querySelector('.sidebar');
                sidebar.classList.toggle('left-0');
                sidebar.classList.toggle('left-[-300px]');
            }

            // Bell submenu
            function toggleSubmenuBell() {
                document.getElementById("submenu-bell").classList.toggle("hidden");
                document.getElementById("submenu-profile").classList.add("hidden"); // Tutup submenu lain
            }

            // Profile submenu
            function toggleSubmenuProfile() {
                document.getElementById("submenu-profile").classList.toggle("hidden");
                document.getElementById("submenu-bell").classList.add("hidden"); // Tutup submenu lain
            }

            // Tutup submenu saat klik di luar
            document.addEventListener("click", function (event) {
                const bell = document.querySelector(".fa-bell");
                const profile = document.querySelector("img[alt='Profile']");
                const submenuBell = document.getElementById("submenu-bell");
                const submenuProfile = document.getElementById("submenu-profile");

                if (!bell.contains(event.target) && !submenuBell.contains(event.target)) {
                    submenuBell.classList.add("hidden");
                }

                if (!profile.contains(event.target) && !submenuProfile.contains(event.target)) {
                    submenuProfile.classList.add("hidden");
                }
            });

            // Jam digital
            function updateJam() {
                const now = new Date();
                const jam = now.getHours().toString().padStart(2, '0');
                const menit = now.getMinutes().toString().padStart(2, '0');
                document.getElementById("jamDisplay").textContent = jam + ':' + menit;
            }

            // Jalankan langsung pertama kali
            updateJam();

            // Update setiap menit
            setInterval(updateJam, 60000);
        </script>

        <!-- LiveReload -->
        <script src="http://127.0.0.1:35729/livereload.js?snipver=1"></script>
    </body>

    </html>