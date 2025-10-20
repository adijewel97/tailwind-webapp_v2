document.addEventListener("DOMContentLoaded", () => {
  const toggleBtn = document.getElementById("menuToggleBtn");
  const sidebar = document.querySelector(".sidebar");

  toggleBtn.addEventListener("click", () => {
    sidebar.classList.toggle("-translate-x-full");
  });
});


// document.addEventListener("DOMContentLoaded", () => {
//   const toggleButtons = document.querySelectorAll(".menu-toggle"); // tombol toggle
//   const sidebar = document.querySelector(".sidebar"); // sidebar sekarang class, bukan id

//   if (toggleButtons.length && sidebar) {
//     toggleButtons.forEach((btn) => {
//       btn.addEventListener("click", () => {
//         sidebar.classList.toggle("w-[300px]");
//         sidebar.classList.toggle("w-[0px]");
//       });
//     });
//   }
// });

// document.addEventListener("DOMContentLoaded", () => {
//   const toggleButtons = document.querySelectorAll(".menu-toggle");
//   const sidebar = document.getElementById("sidebar_me");

//   if (toggleButtons.length && sidebar) {
//     toggleButtons.forEach((btn) => {
//       btn.addEventListener("click", () => {
//         if (sidebar.classList.contains("w-[300px]")) {
//           sidebar.classList.remove("w-[300px]");
//           sidebar.classList.add("w-[0px]");
//         } else {
//           sidebar.classList.remove("w-[0px]");
//           sidebar.classList.add("w-[300px]");
//         }
//       });
//     });
//   }
// });


