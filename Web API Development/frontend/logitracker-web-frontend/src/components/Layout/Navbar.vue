<template>
    <nav class="navbar">
        <div class="navbar-container">
            <!-- Logo and Brand -->
            <div class="navbar-brand">
                <img src="@/assets/images/images/logo.png" alt="LogiTracker Logo" class="navbar-logo" />
            </div>

            <!-- Navigation Links (Desktop) -->
            <div class="navbar-links" :class="{ 'active': isMenuOpen }">
                <a href="#" class="navbar-link active">Dashboard</a>
                <a href="#" class="navbar-link">Shipments</a>
                <a href="#" class="navbar-link">Tracking</a>
                <a href="#" class="navbar-link">Reports</a>
                <a href="#" class="navbar-link">Settings</a>
            </div>

            <!-- User Profile -->
            <div class="navbar-user">
                <div class="navbar-notifications">
                    <i class="fas fa-bell"></i>
                    <span class="notification-badge">3</span>
                </div>
                <div class="navbar-profile">
                    <img src="./avatar.png" alt="User Profile" class="profile-image" />
                    <span class="profile-name">John Doe</span>
                </div>
            </div>

            <!-- Mobile Menu Toggle -->
            <div class="navbar-toggle" @click="toggleMenu">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </nav>
</template>

<script>
export default {
    name: 'Navbar',
    data() {
        return {
            isMenuOpen: false
        }
    },
    methods: {
        toggleMenu() {
            this.isMenuOpen = !this.isMenuOpen;
        }
    }
}
</script>

<style scoped>
.navbar {
    background-color: #720707;
    color: #FFFFFF;
    height: 100px;
    width: 100%;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 1000;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.navbar-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 100%;
    padding: 0 2rem;
    max-width: 1400px;
    margin: 0 auto;
}

/* Logo and Brand */
.navbar-brand {
    display: flex;
    align-items: center;
}

.navbar-logo {
    height: 120px;
    margin-right: 10px;
}

.navbar-title {
    font-size: 1.5rem;
    font-weight: 700;
    color: #FFFFFF;
    margin: 0;
}

/* Navigation Links */
.navbar-links {
    display: flex;
    gap: 2rem;
}

.navbar-link {
    color: #FFFFFF;
    text-decoration: none;
    font-size: 1rem;
    font-weight: 500;
    padding: 0.5rem 0;
    position: relative;
    transition: all 0.3s ease;
}

.navbar-link:hover {
    color: rgba(255, 255, 255, 0.8);
}

.navbar-link.active::after {
    content: '';
    position: absolute;
    bottom: -5px;
    left: 0;
    width: 100%;
    height: 3px;
    background-color: #FFFFFF;
    border-radius: 2px;
}

/* User Profile */
.navbar-user {
    display: flex;
    align-items: center;
    gap: 1.5rem;
}

.navbar-notifications {
    position: relative;
}

.notification-badge {
    position: absolute;
    top: -8px;
    right: -8px;
    background-color: #FFFFFF;
    color: #720707;
    font-size: 0.7rem;
    font-weight: 700;
    width: 18px;
    height: 18px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
}

.navbar-profile {
    display: flex;
    align-items: center;
    gap: 0.5rem;
}

.profile-image {
    width: 35px;
    height: 35px;
    border-radius: 50%;
    border: 2px solid #FFFFFF;
}

.profile-name {
    font-weight: 500;
}

/* Mobile Menu Toggle */
.navbar-toggle {
    display: none;
    flex-direction: column;
    justify-content: space-between;
    width: 30px;
    height: 21px;
    cursor: pointer;
}

.navbar-toggle span {
    display: block;
    height: 3px;
    width: 100%;
    background-color: #FFFFFF;
    border-radius: 3px;
    transition: all 0.3s ease;
}

/* Responsive Design */
@media (max-width: 992px) {
    .navbar-links {
        position: fixed;
        top: 70px;
        left: 0;
        width: 100%;
        background-color: #720707;
        flex-direction: column;
        align-items: center;
        padding: 2rem 0;
        gap: 1.5rem;
        transform: translateY(-150%);
        transition: transform 0.3s ease;
        z-index: 999;
    }

    .navbar-links.active {
        transform: translateY(0);
    }

    .navbar-toggle {
        display: flex;
    }

    .profile-name {
        display: none;
    }
}

@media (max-width: 576px) {
    .navbar-container {
        padding: 0 1rem;
    }

    .navbar-title {
        font-size: 1.2rem;
    }

    .navbar-user {
        gap: 1rem;
    }
}
</style>