<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Responsive Sidebar Tailwind</title>

    <!-- Tailwind CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/style_tailwind_adis.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
</head>
<body class="bg-gradient-to-t from-violet-950 to-violet-700 h-screen text-white">

<!-- Sidebar -->
<div id="sidebar_me" class="sidebar fixed top-0 left-0 h-screen
     w-[300px] sm:w-[300px] -translate-x-full sm:translate-x-0
     bg-gray-900 duration-300 z-50 overflow-hidden shadow-lg">
    <div class="text-2xl border-b-[1px] border-gray-200 px-10 py-4">
        Logo
    </div>
    <div class="px-10 py-4 flex flex-col gap-5 mt-5">
        <a href="#" class="flex items-center gap-3"> <i class="fa fa-user"></i> User Profile</a>
        <a href="#" class="flex items-center gap-3"> <i class="fa fa-envelope-open"></i> Authentication</a>
        <a href="#" class="flex items-center gap-3"> <i class="fa fa-cog"></i> Account</a>
        <a href="#" class="flex items-center gap-3"> <i class="fa fa-briefcase"></i> Corporate</a>
        <a href="#" class="flex items-center gap-3"> <i class="fa fa-facebook"></i> Social</a>
        <a href="#" class="flex items-center gap-3"> <i class="fa fa-question"></i> About</a>
    </div>
</div>

<!-- Overlay (Hanya Mobile) -->
<div id="overlay" class="fixed inset-0 bg-black bg-opacity-50 z-40 hidden sm:hidden"></div>

<!-- Toggle Button (Selalu muncul) -->
<div class="fixed top-4 left-4 z-60 sm:left-[310px] sm:top-6">
    <i id="menuToggleBtn" class="fa fa-bars cursor-pointer text-2xl"></i>
</div>

<!-- Content -->
<div class="sm:ml-[300px] flex-grow bg-white mt-14 p-6 sm:p-10 rounded-lg shadow-md 
            mx-4 sm:mx-auto max-w-5xl">
    <h1 class="text-3xl font-bold text-black mb-4">Dashboard</h1>
    <p class="text-black">
        Konten halaman di sini. Sidebar responsive sudah aktif! Konten tidak menempel
        ke tepi layar.
    </p>
</div>


<!-- Sidebar + Overlay JS -->
<script>
    document.addEventListener("DOMContentLoaded", () => {
        const toggleBtn = document.getElementById("menuToggleBtn");
        const sidebar = document.getElementById("sidebar_me");
        const overlay = document.getElementById("overlay");

        toggleBtn.addEventListener("click", () => {
            sidebar.classList.toggle("-translate-x-full");
            overlay.classList.toggle("hidden");
        });

        overlay.addEventListener("click", () => {
            sidebar.classList.add("-translate-x-full");
            overlay.classList.add("hidden");
        });
    });
</script>

<!-- LiveReload -->
<script src="http://127.0.0.1:35729/livereload.js?snipver=1"></script>

</body>
</html>