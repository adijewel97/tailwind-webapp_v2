class UIController {
    constructor() {
        this.sidebar = document.getElementById('sidebar');
        this.content = document.getElementById('content-wrapper');
        this.initEventListeners();
    }

    // 🔹 Inisialisasi semua event listener
    initEventListeners() {
        // 🔸 Tombol toggle sidebar
        document.querySelectorAll('.toggleSidebar').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.preventDefault();
                e.stopPropagation();
                this.toggleSidebar();
            });
        });

        // 🔸 Dropdown sidebar (level 1 & 2)
        document.querySelectorAll('.toggleDropdown').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.preventDefault();
                e.stopPropagation();

                const menuId = btn.dataset.menu;
                const arrowId = btn.dataset.arrow;
                this.toggleDropdown(menuId, arrowId);
            });
        });

        // 🔸 Submenu Bell
        document.querySelectorAll('.toggleSubmenuBell').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.preventDefault();
                e.stopPropagation();
                this.toggleSubmenuBell();
            });
        });

        // 🔸 Submenu Profile
        document.querySelectorAll('.toggleSubmenuProfile').forEach(btn => {
            btn.addEventListener('click', (e) => {
                e.preventDefault();
                e.stopPropagation();
                this.toggleSubmenuProfile();
            });
        });

        // 🔸 Tutup submenu bell/profile jika klik di luar
        document.addEventListener('click', (event) => this.closeSubmenusOnOutsideClick(event));
    }

    // 🔹 Toggle Sidebar
    toggleSidebar() {
        this.sidebar.classList.toggle('w-[300px]');
        this.sidebar.classList.toggle('w-0');
        this.sidebar.classList.toggle('hidden');
        this.content.classList.toggle('ml-[300px]');
        this.content.classList.toggle('ml-0');
    }

    // 🔹 Toggle Dropdown dengan animasi halus & stabil
    toggleDropdown(menuId, arrowId) {
        const submenu = document.getElementById(menuId);
        const arrow = document.getElementById(arrowId);

        if (!submenu || !arrow) return;

        const isHidden = submenu.classList.contains('hidden');

        // Pastikan tidak ada animasi lama yang menggangu
        submenu.style.transition = 'none';
        submenu.style.overflow = 'hidden';

        if (isHidden) {
            submenu.classList.remove('hidden');
            submenu.style.maxHeight = '0px';
            submenu.offsetHeight; // force reflow
            submenu.style.transition = 'max-height 0.3s ease-out';
            submenu.style.maxHeight = submenu.scrollHeight + 'px';
            arrow.classList.add('rotate-180');

            // Setelah selesai animasi, biarkan auto height
            submenu.addEventListener('transitionend', () => {
                submenu.style.maxHeight = 'none';
            }, { once: true });
        } else {
            // Tutup
            submenu.style.maxHeight = submenu.scrollHeight + 'px';
            submenu.offsetHeight;
            submenu.style.transition = 'max-height 0.3s ease-in';
            submenu.style.maxHeight = '0px';
            arrow.classList.remove('rotate-180');

            submenu.addEventListener('transitionend', () => {
                submenu.classList.add('hidden');
                submenu.style.maxHeight = '';
            }, { once: true });
        }
    }

    // 🔹 Toggle Submenu Bell
    toggleSubmenuBell() {
        const submenuBell = document.getElementById("submenu-bell");
        const submenuProfile = document.getElementById("submenu-profile");
        if (!submenuBell) return;
        submenuBell.classList.toggle("hidden");
        submenuProfile?.classList.add("hidden");
    }

    // 🔹 Toggle Submenu Profile
    toggleSubmenuProfile() {
        const submenuProfile = document.getElementById("submenu-profile");
        const submenuBell = document.getElementById("submenu-bell");
        if (!submenuProfile) return;
        submenuProfile.classList.toggle("hidden");
        submenuBell?.classList.add("hidden");
    }

    // 🔹 Tutup submenu bell/profile jika klik di luar
    closeSubmenusOnOutsideClick(event) {
        const submenuBell = document.getElementById("submenu-bell");
        const submenuProfile = document.getElementById("submenu-profile");
        const bell = document.querySelector(".toggleSubmenuBell");
        const profile = document.querySelector(".toggleSubmenuProfile");

        if (submenuBell && bell && !bell.contains(event.target) && !submenuBell.contains(event.target)) {
            submenuBell.classList.add("hidden");
        }
        if (submenuProfile && profile && !profile.contains(event.target) && !submenuProfile.contains(event.target)) {
            submenuProfile.classList.add("hidden");
        }
    }
}

// Jalankan setelah halaman siap
document.addEventListener('DOMContentLoaded', () => new UIController());
