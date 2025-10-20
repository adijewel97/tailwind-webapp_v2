<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tailwind CSS V5</title>
  <!-- Tailwind CSS -->
  <link href="${pageContext.request.contextPath}/assets/css/style_tailwind_adis.css" rel="stylesheet">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="bg-gray-100">

  <!-- Header fixed -->
  <div class="fixed top-0 left-0 right-0 bg-cyan-500 p-4 z-50 h-19
    rounded-r-full
    flex space-x-3 items-center justify-between">
    <i class="fa fa-bars text-white cursor-pointer" onclick="toggleSidebar()"></i>
    <span class="text-white text-sm font-serif font-bold">Tailwindccs Adis</span>
    
    <!-- Right: bell + profile -->
    <div class="flex items-center space-x-2 flex-shrink-0 relative">
        <!-- Bell -->
        <div class="relative">
          <i class="fa fa-bell p-2 text-white cursor-pointer" onclick="toggleSubmenuBell()"></i>
          <!-- Submenu bell -->
          <div id="submenu-bell" 
              class="hidden absolute right-0 mt-2 w-40 bg-slate-500 text-white text-sm rounded-md shadow-lg z-50">
                <h1 class="cursor-pointer p-2 group-hover:text-orange-500 rounded-md mt-1">
                    <i class="fa fa-users px-2"></i> Social
                </h1>
          </div>
        </div>

        <!-- Profile -->
        <div class="relative">
          <img src="${pageContext.request.contextPath}/assets/img/profile.jpg"
            class="rounded-full" width="30"
            alt="Profile"    onclick="toggleSubmenuProfile()">
            <!-- Submenu profile -->
            <div id="submenu-profile" 
                class="hidden absolute right-0 mt-2 w-40 bg-slate-500 text-white text-sm rounded-md shadow-lg z-50">
                <h1 class="cursor-pointer p-2 hover:bg-gray-700 rounded-md mt-1">
                    <i class="fa fa-users px-2"></i> Social
                </h1>
                <h1 class="cursor-pointer p-2 hover:bg-gray-700 rounded-md mt-1">
                    <i class="fa fa-female px-2"></i> Setting
                </h1>
                <h1 class="cursor-pointer p-2 border-t hover:bg-gray-700 rounded-md mt-1">
                    <i class="fa fa-sign-out px-2"></i> Logout
                </h1>
          </div>
        </div>
    </div>

  </div>

  <!-- Sidebar fixed -->
  <div id="sidebar" 
      class="sidebar fixed top-[70px] left-0 bg-gray-200 
      w-[300px] h-[calc(100vh-70px)] 
      overflow-y-auto overflow-x-hidden transition-all duration-300
      flex flex-col rounded-br-3xl">

    <!-- Header sidebar -->
    <div class="flex items-center h-12 px-4 border-b border-blue-900">
        <i class="fa fa-user text-black text-lg"></i>
        <h1 class="sidebar-text font-bold text-black text-[15px] ml-3">Tailwindbar</h1>
    </div>

    <!-- Menu -->
    <div class="group flex items-center h-12 px-4 rounded-md cursor-pointer 
                hover:bg-gray-200 transition-all duration-200">
        <i class="fa fa-home text-base text-black group-hover:text-orange-600"></i>
        <span class="sidebar-text text-[15px] ml-4 text-black group-hover:text-orange-600">
            Home
        </span>
    </div>

    <div class="group flex items-center h-12 px-4 rounded-md cursor-pointer 
                hover:bg-gray-200 transition-all duration-200">
        <i class="fa fa-bookmark-o text-base text-black group-hover:text-orange-600"></i>
        <span class="sidebar-text text-[15px] ml-4 text-black group-hover:text-orange-600">
            Bookmark
        </span>
    </div>
  </div>

  <!-- Content wrapper -->
  <div id="content-wrapper" 
      class="ml-[300px] transition-all duration-300
      pt-[70px] p-6 bg-gray-100 min-h-screen h-[calc(100vh-70px)] overflow-auto">
    <div class="bg-white p-6 rounded-md shadow-sm border border-gray-200">
      <h1 class="text-sm font-semibold text-gray-800 mb-2">Hardcopy Submission</h1>
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
          const sidebar = document.getElementById('sidebar');
          const content = document.getElementById('content-wrapper');
          const texts = sidebar.querySelectorAll('.sidebar-text');

          sidebar.classList.toggle('w-[300px]');
          sidebar.classList.toggle('w-[60px]');

          content.classList.toggle('ml-[300px]');
          content.classList.toggle('ml-[60px]');

          texts.forEach(el => {
              el.classList.toggle('hidden');
          });

          // Saat collapse, center icon
          const menuItems = sidebar.querySelectorAll('.flex.items-center.h-12');
          menuItems.forEach(item => {
              item.classList.toggle('justify-center');
          });
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
