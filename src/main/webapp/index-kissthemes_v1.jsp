<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tailwind WebApp</title>
    <link href="${pageContext.request.contextPath}/assets/css/style_tailwind_me.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
</head>
<body class="h-screen overflow-hidden flex items-start justify-start" style="background: #edf2f7;">

<div id="wrapper" class="flex h-screen sm:flex-col md:flex-row font-light w-full">

    <!-- Sidebar -->
    <div id="sidebar" style="background-color:#1E40AF;" class="text-sm md:w-64 overflow-y-scroll sm:w-screen">
        <header class="flex justify-between items-center border-b border-blue-900 pt-8 pb-8 pl-6 pr-6 mb-4">
            <div id="logo">
                <a href="#" class="no-underline text-white md:text-2xl sm:text-4xl font-bold">
                    AdisTheme
                </a>
            </div>
            <div id="collapse" class="text-white border border-white p-2 h-8 rounded">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </div>
        </header>
        <div id="profile" class="flex items-center border-b border-blue-900 px-8 py-3 mb-4">
            <div id="img"  class="w-1/4"> 
                <img src="${pageContext.request.contextPath}/assets/img/profile.jpg" width="55" alt="Profile" class="rounded-full"> 
            </div>

            <div id="welcome" class="text-white w-2/4 sm:ml-1 md:ml-4">
                <p class="text-xs mb-1">Welcome,</p>
                <span class="text-lg">Adi Jewel</span>
            </div>
        </div>
        
        <ul id="menu" class="flex flex-col list-reset sm:hidden md:block">
            
            <li class="block">
                <a href="#" id="dashboardLink" class="no-underline text-white block h-full w-full border-blue-900 px-8 py-1 hover:text-orange">
                    <i class="fa fa-tachometer mr-2" aria-hidden="true"></i>Dashboard
                </a>
            </li>

             <li class="block">
                <a href="#" class="no-underline text-white block h-full w-full bg-blue-800 px-8 py-4 hover:text-orange">
                    <i class="fa fa-envelope mr-2" aria-hidden="true"></i>
                    MailBox
                    <i class="fa fa-angle-down float-right" aria-hidden="true"></i>
                </a>
                <ul class="flex flex-col list-reset bg-blue-800 block">
                    <li class="flex block">
                        <a href="#" class="no-underline text-white block h-full w-full ml-4 hover:text-orange px-8 py-1">
                            <i class="fa fa-envelope-o mr-2" aria-hidden="true"></i>
                            Inbox
                        </a>
                    </li>
                    <li class="flex block">
                        <a href="#" class="no-underline text-white block h-full w-full ml-4 hover:text-orange px-8 py-1">
                            <i class="fa fa-envelope-o mr-2" aria-hidden="true"></i>
                            Categories
                            <i class="fa fa-angle-down float-right" aria-hidden="true"></i>
                        </a>
                    </li>
                    <ul class="flex flex-col list-reset bg-blue-800 block">
                        <li class="flex block">
                            <a href="#" class="no-underline text-white block h-full w-full ml-8 hover:text-orange px-8 py-1">
                                <i class="fa fa-envelope-o mr-2" aria-hidden="true"></i>
                                Social
                            </a>
                        </li>
                        <li class="flex block">
                            <a href="#" class="no-underline text-white block h-full w-full ml-8 hover:text-orange px-8 py-1">
                                <i class="fa fa-envelope-o mr-2" aria-hidden="true"></i>
                                Notifications
                            </a>
                        </li>
                    </ul>
                </ul>
            </li>
        
            <li class="block">
               <a href="#" id="accountLink" class="no-underline text-white block h-full w-full border-blue-900 px-8 py-1 hover:text-orange flex justify-between items-center">
                    <span><i class="fa fa-cog mr-2" aria-hidden="true"></i>Setting</span>
                    <i class="fa fa-angle-down" aria-hidden="true"></i>
                </a>
             
               <ul id="accountSubmenu" class="flex flex-col list-reset bg-blue-800 hidden transition-all duration-300 ease-in-out overflow-hidden max-h-0">
                    <li>
                        <a href="#" id="tambahAkunLink" class="no-underline text-white block h-full w-full ml-4 hover:text-orange px-8 py-1">
                            <i class="fa fa-user-plus mr-2" aria-hidden="true"></i>Tambah Akun
                        </a>
                    </li>
                    <li>
                        <a href="#" id="gantiPasswordLink" class="no-underline text-white block h-full w-full ml-4 hover:text-orange px-8 py-1">
                            <i class="fa fa-key mr-2" aria-hidden="true"></i>Ganti Password
                        </a>
                    </li>
                </ul>
            </li>

            <li class="block">
                <a href="#" class="flex no-underline items-center text-white px-8 py-2 hover:text-orange">
                    <i class="fa fa-sign-out mr-2" aria-hidden="true"></i>Logout
                </a>
            </li>

        </ul>
    </div>

    <!-- Content -->
    <div id="content" class="px-8 py-6 bg-transparent flex-grow flex-shrink flex-auto overflow-y-scroll w-full">
        <div id="info" class="border-b border-grey-light h-24 mb-6">
            <div class="flex justify-between flex-grow items-center h-24">
                <div class="flex">
                    <ul class="flex list-reset text-black">
                        <li class="py-4 px-4"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i></li>
                        <li class="py-4 px-4"><i class="fa fa-envelope" aria-hidden="true"></i></li>
                        <li class="flex items-center w-8 h-8 ml-8">
                            <a href="#" class="relative no-underline text-black">
                                <i class="fa fa-list absolute pin-t pin-r" aria-hidden="true"></i>
                                <span class="absolute rounded-full h-4 w-4 bg-orange text-xs text-center leading-tight text-white pin-b pin-l">2</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="flex">
                    <ul class="flex list-reset text-black">
                        <li class="px-4">
                            <a href="#" class="no-underline text-sm flex items-center hover:text-orange cursor-pointer">
                                <i class="fa fa-comments mr-1" aria-hidden="true"></i> Chat
                            </a>
                        </li>
                        <li class="border-l px-4">
                            <a href="/logout" class="no-underline text-sm flex items-center hover:text-orange cursor-pointer">
                                Log Out <i class="fa fa-sign-out ml-1" aria-hidden="true"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Dynamic Content -->
        <div id="dynamicContent">
            <%@ include file="views/dashboard/dashboard.jsp" %>
        </div>

    </div>
</div>

<script src="http://127.0.0.1:35729/livereload.js?snipver=1"></script>

<script>
    const accountLink    = document.getElementById('accountLink');
    const accountSubmenu = document.getElementById('accountSubmenu');
    const dynamicContent = document.getElementById('dynamicContent');

    // Toggle submenu Account
    accountLink.addEventListener('click', (e) => {
        e.preventDefault();
        accountSubmenu.classList.toggle('hidden');
    });

    // Dashboard
    document.getElementById('dashboardLink').addEventListener('click', (e) => {
        e.preventDefault();
        fetch('views/dashboard/dashboard.jsp')
            .then(response => response.text())
            .then(html => {
                dynamicContent.innerHTML = html;
            })
            .catch(err => console.error('Gagal load JSP:', err));
    });

    // Tambah Akun
    document.getElementById('tambahAkunLink').addEventListener('click', (e) => {
        e.preventDefault();
        fetch('views/users/user_tambah.jsp')
            .then(response => response.text())
            .then(html => {
                dynamicContent.innerHTML = html;
            })
            .catch(err => console.error('Gagal load JSP:', err));
    });

    // Ganti Password
    document.getElementById('gantiPasswordLink').addEventListener('click', (e) => {
        e.preventDefault();
        fetch('views/users/user_password.jsp')
            .then(response => response.text())
            .then(html => {
                dynamicContent.innerHTML = html;
            })
            .catch(err => console.error('Gagal load JSP:', err));
    });
</script>

<!-- LiveReload script, biar auto refresh -->
<script src="http://127.0.0.1:35729/livereload.js?snipver=1"></script>

</body>
</html>
