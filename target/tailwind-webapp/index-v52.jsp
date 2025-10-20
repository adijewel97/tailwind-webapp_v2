<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tailwind Sidebar Blur</title>

  <!-- Tailwind CSS -->
  <link href="${pageContext.request.contextPath}/assets/css/style_tailwind_adis.css" rel="stylesheet">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="bg-gray-100 overflow-x-hidden">

  <!-- Overlay blur + dark background -->
  <div id="overlay" 
       class="fixed inset-0 bg-black/30 backdrop-blur-sm z-40 hidden opacity-0 transition-opacity duration-300"></div>

  <!-- Header fixed -->
  <div class="fixed top-0 left-0 right-0 bg-cyan-500 p-4 z-50 h-19
    rounded-r-full flex space-x-3 items-center justify-between">
    <i class="fa fa-bars text-white cursor-pointer" id="toggle-sidebar-btn"></i>
    <span class="text-white text-sm font-serif font-bold">Tailwindccs Adis</span>
    
    <!-- Right: bell + profile -->
    <div class="flex items-center space-x-3 flex-shrink-0 relative">

      <!-- Bell -->
      <div class="relative">
        <i class="fa fa-bell p-2 text-white cursor-pointer" onclick="toggleSubmenuBell()"></i>
        <div id="submenu-bell" 
            class="hidden absolute right-0 mt-2 w-44 bg-gray-200 text-black text-sm rounded-md shadow-lg z-50 border border-gray-300 
                   opacity-0 transform scale-95 transition-all duration-200 ease-out">
          <h1 class="cursor-pointer p-2 hover:bg-gray-300 rounded-md mt-1 flex items-center">
              <i class="fa fa-users px-2"></i> <span>Social</span>
          </h1>
        </div>
      </div>

      <!-- Profile -->
      <div class="relative">
        <img src="${pageContext.request.contextPath}/assets/img/profile.jpg"
             class="rounded-full cursor-pointer" width="30" alt="Profile"
             onclick="toggleSubmenuProfile()">

        <div id="submenu-profile" 
            class="hidden absolute right-0 mt-2 w-44 bg-gray-200 text-black text-sm rounded-md shadow-lg z-50 border border-gray-300
                   opacity-0 transform scale-95 transition-all duration-200 ease-out">
            
            <h1 class="submenu-item cursor-pointer p-2 rounded-md mt-1 flex items-center 
                hover:bg-gray-200 hover:text-orange-600 transition-all duration-150">
                <i class="fa fa-users px-2"></i> 
                <span>Social</span>
            </h1>

            <h1 class="submenu-item cursor-pointer p-2 rounded-md mt-1 flex items-center 
                hover:bg-gray-200 hover:text-orange-600 transition-all duration-150">
                <i class="fa fa-female px-2"></i> 
                <span>Setting</span>
            </h1>

            <h1 class="submenu-item cursor-pointer p-2 border-t rounded-md mt-1 flex items-center 
                hover:bg-gray-200 hover:text-orange-600 transition-all duration-150">
                <i class="fa fa-sign-out px-2"></i> 
                <span>Logout</span>
            </h1>
        </div>
      </div>
    </div>
  </div>

  <!-- Sidebar fixed -->
    <div id="sidebar" 
        class="fixed top-[70px] left-0 bg-gray-200 
            w-[300px] h-[calc(100vh-70px)] 
            overflow-y-auto overflow-x-hidden transition-all duration-300 
            transform -translate-x-full 
            flex flex-col rounded-br-3xl z-50">


    <!-- Header sidebar -->
    <div class="p-2.5 mt-1 flex items-center border-b border-blue-900">
        <img src="${pageContext.request.contextPath}/assets/img/logo.png" 
            width="24" alt="Profile" class="rounded-full cursor-pointer">
        <h1 class="sidebar-text font-bold text-black text-[15px] ml-3">Tailwindbar</h1>
    </div>

    <!-- Menu Home -->
    <div class="group flex items-center h-12 px-4 rounded-md cursor-pointer 
                hover:bg-gray-300 transition-all duration-200">
        <i class="fa fa-home text-base text-black group-hover:text-orange-600"></i>
        <span class="sidebar-text text-[15px] ml-4 text-black group-hover:text-orange-600">
            Home
        </span>
    </div>

    <!-- Bookmark -->
    <div class="group flex items-center h-12 px-4 rounded-md cursor-pointer 
                hover:bg-gray-300 transition-all duration-200">
        <i class="fa fa-bookmark-o text-base text-black group-hover:text-orange-600"></i>
        <span class="sidebar-text text-[15px] ml-4 text-black group-hover:text-orange-600">
            Bookmark
        </span>
    </div>

    <!-- Chatbox -->
    <div class="w-full">
        <div id="chatbox-btn"
            class="group flex items-center justify-between h-12 px-4 rounded-md cursor-pointer 
                    hover:bg-gray-300 transition-all duration-200"
            onclick="toggleChatbox()">
            <div class="flex items-center">
                <i class="fa fa-comment-o text-base text-black group-hover:text-orange-600"></i>
                <span class="sidebar-text text-[15px] ml-4 text-black group-hover:text-orange-600">
                    Chatbox
                </span>
            </div>
            <i id="chatbox-arrow" class="fa fa-chevron-down text-xs text-black ml-2"></i>
        </div>

        <div id="submenu" class="hidden text-left text-sm w-full overflow-hidden">
            <h1 class="cursor-pointer p-2 pl-8 text-base rounded-md mt-1 flex items-center 
                    hover:bg-gray-300 hover:text-orange-600">
                <i class="fa fa-facebook px-2 text-base"></i>
                <span class="sidebar-text text-[15px] ml-1">Social</span>
            </h1>
            <h1 class="cursor-pointer p-2 pl-8 text-base rounded-md mt-1 flex items-center 
                    hover:bg-gray-300 hover:text-orange-600">
                <i class="fa fa-female px-2"></i>
                <span class="sidebar-text text-[15px] ml-1">Personal</span>
            </h1>
            <h1 class="cursor-pointer p-2 pl-8 text-base rounded-md mt-1 flex items-center 
                    hover:bg-gray-300 hover:text-orange-600">
                <i class="fa fa-users px-2"></i>
                <span class="sidebar-text text-[15px] ml-1">Friends</span>
            </h1>
        </div>
    </div>

    <!-- Popup submenu Chatbox -->
    <div id="popup-chatbox"
        class="hidden absolute top-[130px] left-[65px] bg-gray-200 shadow-lg rounded-md z-50 
                w-[180px] border border-gray-300 overflow-hidden
                opacity-0 transform scale-95 transition-all duration-200 ease-out">
        <h1 class="cursor-pointer p-2 hover:bg-gray-300 text-sm flex items-center">
            <i class="fa fa-facebook px-2"></i> <span>Social</span>
        </h1>
        <h1 class="cursor-pointer p-2 hover:bg-gray-300 text-sm flex items-center">
            <i class="fa fa-female px-2"></i> <span>Personal</span>
        </h1>
        <h1 class="cursor-pointer p-2 hover:bg-gray-300 text-sm flex items-center">
            <i class="fa fa-users px-2"></i> <span>Friends</span>
        </h1>
    </div>
  </div>

  <!-- Content wrapper -->
  <div id="content-wrapper" 
      class="ml-[300px] transition-all duration-300 rounded-tl-sm
      pt-[70px] p-2 bg-gray-100 min-h-screen h-[calc(100vh-70px)] overflow-auto">
    <div class="bg-white p-4 rounded-md shadow-sm border border-gray-200">
      <h1 class="text-sm font-semibold text-gray-800 mb-2">Hardcopy Submission</h1>
    </div>
  </div>

  <!-- Scripts -->
  <script>
    // Toggle sidebar with overlay
    document.getElementById('toggle-sidebar-btn').addEventListener('click', function() {
      const sidebar = document.getElementById('sidebar');
      const overlay = document.getElementById('overlay');
      const content = document.getElementById('content-wrapper');

      const hidden = sidebar.classList.contains('-translate-x-full');

      if (hidden) {
        sidebar.classList.remove('-translate-x-full');
        overlay.classList.remove('hidden');
        content.classList.add('ml-[300px]');
        setTimeout(() => overlay.classList.add('opacity-100'), 10);
      } else {
        sidebar.classList.add('-translate-x-full');
        content.classList.remove('ml-[300px]');
        content.classList.add('ml-0');
        overlay.classList.remove('opacity-100');
        setTimeout(() => overlay.classList.add('hidden'), 300);
      }
    });

    // Klik overlay = tutup sidebar
    document.getElementById('overlay').addEventListener('click', () => {
      const sidebar = document.getElementById('sidebar');
      const overlay = document.getElementById('overlay');
      const content = document.getElementById('content-wrapper');
      sidebar.classList.add('-translate-x-full');
      content.classList.remove('ml-[300px]');
      content.classList.add('ml-0');
      overlay.classList.remove('opacity-100');
      setTimeout(() => overlay.classList.add('hidden'), 300);
    });

    // Animasi muncul/hilang submenu
    function toggleAnimatedMenu(el) {
      const isHidden = el.classList.contains("hidden");
      if (isHidden) {
        el.classList.remove("hidden");
        setTimeout(() => {
          el.classList.remove("opacity-0", "scale-95");
          el.classList.add("opacity-100", "scale-100");
        }, 10);
      } else {
        el.classList.add("opacity-0", "scale-95");
        el.classList.remove("opacity-100", "scale-100");
        setTimeout(() => el.classList.add("hidden"), 150);
      }
    }

    function toggleSubmenuProfile() {
      toggleAnimatedMenu(document.getElementById("submenu-profile"));
    }

    function toggleSubmenuBell() {
      toggleAnimatedMenu(document.getElementById("submenu-bell"));
    }

    function toggleChatbox() {
      const sidebar = document.getElementById('sidebar');
      const submenu = document.getElementById('submenu');
      const popup = document.getElementById('popup-chatbox');
      if (sidebar.classList.contains('-translate-x-full')) return;
      if (sidebar.classList.contains('w-[60px]')) toggleAnimatedMenu(popup);
      else submenu.classList.toggle('hidden');
    }

    // Tutup submenu saat klik di luar
    document.addEventListener("click", function(e) {
      const submenuProfile = document.getElementById("submenu-profile");
      const submenuBell = document.getElementById("submenu-bell");
      const popup = document.getElementById("popup-chatbox");
      const profileImg = document.querySelector("img[onclick='toggleSubmenuProfile()']");
      const bellIcon = document.querySelector("i[onclick='toggleSubmenuBell()']");
      const chatBtn = document.getElementById("chatbox-btn");

      if (!submenuProfile.contains(e.target) && !profileImg.contains(e.target))
        submenuProfile.classList.add("hidden");

      if (!submenuBell.contains(e.target) && !bellIcon.contains(e.target))
        submenuBell.classList.add("hidden");

      if (!popup.contains(e.target) && !chatBtn.contains(e.target))
        popup.classList.add("hidden");
    });
  </script>
</body>
</html>
