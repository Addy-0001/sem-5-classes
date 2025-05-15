<template>
    <footer class="footer">
        <div class="footer-container">
            <!-- Company Info Section -->
            <div class="footer-section company-info">
                <div class="footer-logo">
                    <img src="@/assets/images/images/Logo.png" alt="LogiTracker Logo" class="logo-image" />
                </div>
                <p class="company-description">
                    Advanced logistics tracking solutions for efficient supply chain management and real-time shipment
                    monitoring.
                </p>
                <div class="social-links">
                    <a href="#" class="social-link" aria-label="Facebook">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="social-link" aria-label="Twitter">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="social-link" aria-label="LinkedIn">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a href="#" class="social-link" aria-label="Instagram">
                        <i class="fab fa-instagram"></i>
                    </a>
                </div>
            </div>

            <!-- Quick Links Section -->
            <div class="footer-section quick-links">
                <h3 class="footer-heading">Quick Links</h3>
                <ul class="footer-links">
                    <li><a href="#">Dashboard</a></li>
                    <li><a href="#">Shipment Tracking</a></li>
                    <li><a href="#">Reports & Analytics</a></li>
                    <li><a href="#">Route Optimization</a></li>
                    <li><a href="#">Inventory Management</a></li>
                </ul>
            </div>

            <!-- Resources Section -->
            <div class="footer-section resources">
                <h3 class="footer-heading">Resources</h3>
                <ul class="footer-links">
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">API Documentation</a></li>
                    <li><a href="#">Tutorials</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Community Forum</a></li>
                </ul>
            </div>

            <!-- Contact Section -->
            <div class="footer-section contact-info">
                <h3 class="footer-heading">Contact Us</h3>
                <ul class="contact-details">
                    <li>
                        <i class="fas fa-map-marker-alt"></i>
                        <span>123 Logistics Way, Shipping City, SC 12345</span>
                    </li>
                    <li>
                        <i class="fas fa-phone-alt"></i>
                        <span>+1 (555) 123-4567</span>
                    </li>
                    <li>
                        <i class="fas fa-envelope"></i>
                        <span>support@logitracker.com</span>
                    </li>
                    <li>
                        <i class="fas fa-clock"></i>
                        <span>Mon-Fri: 8:00 AM - 6:00 PM</span>
                    </li>
                </ul>
            </div>
        </div>

        <!-- Bottom Bar -->
        <div class="footer-bottom">
            <div class="footer-container">
                <p class="copyright">
                    &copy; {{ new Date().getFullYear() }} LogiTracker. All rights reserved.
                </p>
                <div class="legal-links">
                    <a href="#">Privacy Policy</a>
                    <a href="#">Terms of Service</a>
                    <a href="#">Cookie Policy</a>
                </div>
            </div>
        </div>
    </footer>
</template>

<script>
export default {
    name: 'Footer'
}
</script>

<style scoped>
.footer {
    background-color: #720707;
    color: #FFFFFF;
    padding-top: 3rem;
    width: 100%;
}

.footer-container {
    max-width: 1400px;
    margin: 0 auto;
    padding: 0 2rem;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    gap: 2rem;
}

/* Company Info Section */
.company-info {
    flex: 1 1 300px;
    max-width: 350px;
}

.footer-logo {
    display: flex;
    align-items: center;
    margin-bottom: 1rem;
}

.logo-image {
    height: 120px;
    margin-left: 50px;
}

.logo-text {
    font-size: 1.5rem;
    font-weight: 700;
    margin: 0;
}

.company-description {
    margin-bottom: 1.5rem;
    line-height: 1.6;
    opacity: 0.9;
}

.social-links {
    display: flex;
    gap: 1rem;
}

.social-link {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    background-color: rgba(255, 255, 255, 0.1);
    color: #FFFFFF;
    transition: all 0.3s ease;
}

.social-link:hover {
    background-color: rgba(255, 255, 255, 0.2);
    transform: translateY(-3px);
}

/* Footer Sections */
.footer-section {
    flex: 1 1 200px;
}

.footer-heading {
    font-size: 1.2rem;
    font-weight: 600;
    margin-bottom: 1.5rem;
    position: relative;
}

.footer-heading::after {
    content: '';
    position: absolute;
    bottom: -8px;
    left: 0;
    width: 40px;
    height: 3px;
    background-color: #FFFFFF;
    border-radius: 2px;
}

.footer-links {
    list-style: none;
    padding: 0;
    margin: 0;
}

.footer-links li {
    margin-bottom: 0.8rem;
}

.footer-links a {
    color: #FFFFFF;
    text-decoration: none;
    opacity: 0.8;
    transition: all 0.3s ease;
}

.footer-links a:hover {
    opacity: 1;
    padding-left: 5px;
}

/* Contact Section */
.contact-details {
    list-style: none;
    padding: 0;
    margin: 0;
}

.contact-details li {
    display: flex;
    align-items: flex-start;
    margin-bottom: 1rem;
}

.contact-details i {
    margin-right: 10px;
    margin-top: 4px;
}

/* Bottom Bar */
.footer-bottom {
    margin-top: 3rem;
    padding: 1.5rem 0;
    border-top: 1px solid rgba(255, 255, 255, 0.1);
}

.footer-bottom .footer-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    gap: 1rem;
}

.copyright {
    margin: 0;
    opacity: 0.8;
}

.legal-links {
    display: flex;
    gap: 1.5rem;
}

.legal-links a {
    color: #FFFFFF;
    text-decoration: none;
    opacity: 0.8;
    font-size: 0.9rem;
    transition: opacity 0.3s ease;
}

.legal-links a:hover {
    opacity: 1;
}

/* Responsive Design */
@media (max-width: 992px) {
    .footer-container {
        gap: 3rem;
    }

    .company-info {
        flex: 1 1 100%;
        max-width: 100%;
    }

    .footer-section {
        flex: 1 1 calc(50% - 2rem);
    }
}

@media (max-width: 768px) {
    .footer-section {
        flex: 1 1 100%;
    }

    .footer-bottom .footer-container {
        flex-direction: column;
        text-align: center;
    }

    .legal-links {
        justify-content: center;
    }
}

@media (max-width: 576px) {
    .footer-container {
        padding: 0 1rem;
    }
}
</style>