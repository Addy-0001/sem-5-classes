<template>
  <div class="landing-page">
    <!-- Navbar component would be imported and used here -->
    <!-- <Navbar /> -->

    <!-- Hero Section -->
    <section class="hero-section">
      <div class="container">
        <div class="hero-content">
          <h1 class="hero-title">Track Your Logistics with Precision and Ease</h1>
          <p class="hero-subtitle">
            Real-time tracking, analytics, and optimization for your entire supply chain
          </p>
          <div class="hero-cta">
            <button class="btn btn-primary">Get Started</button>
            <button class="btn btn-secondary">Schedule Demo</button>
          </div>
        </div>
        <div class="hero-image">
          <img src="./hero-image.png" alt="LogiTracker Dashboard Preview" />
        </div>
      </div>
    </section>

    <!-- Features Section -->
    <section class="features-section">
      <div class="container">
        <div class="section-header">
          <h2 class="section-title">Powerful Features</h2>
          <p class="section-subtitle">Everything you need to manage your logistics operations</p>
        </div>
        <div class="features-grid">
          <div class="feature-card">
            <div class="feature-icon">
              <i class="fas fa-map-marked-alt"></i>
            </div>
            <h3 class="feature-title">Real-Time Tracking</h3>
            <p class="feature-description">
              Monitor your shipments in real-time with precise GPS tracking and instant updates
            </p>
          </div>
          <div class="feature-card">
            <div class="feature-icon">
              <i class="fas fa-chart-line"></i>
            </div>
            <h3 class="feature-title">Advanced Analytics</h3>
            <p class="feature-description">
              Gain insights with comprehensive analytics and customizable reports
            </p>
          </div>
          <div class="feature-card">
            <div class="feature-icon">
              <i class="fas fa-route"></i>
            </div>
            <h3 class="feature-title">Route Optimization</h3>
            <p class="feature-description">
              Save time and fuel with AI-powered route optimization algorithms
            </p>
          </div>
          <div class="feature-card">
            <div class="feature-icon">
              <i class="fas fa-bell"></i>
            </div>
            <h3 class="feature-title">Instant Alerts</h3>
            <p class="feature-description">
              Get notified about delays, exceptions, and important milestones
            </p>
          </div>
          <div class="feature-card">
            <div class="feature-icon">
              <i class="fas fa-mobile-alt"></i>
            </div>
            <h3 class="feature-title">Mobile Access</h3>
            <p class="feature-description">
              Access your logistics data anytime, anywhere with our mobile app
            </p>
          </div>
          <div class="feature-card">
            <div class="feature-icon">
              <i class="fas fa-users"></i>
            </div>
            <h3 class="feature-title">Team Collaboration</h3>
            <p class="feature-description">
              Collaborate seamlessly with your team and partners in real-time
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- How It Works Section -->
    <section class="how-it-works-section">
      <div class="container">
        <div class="section-header">
          <h2 class="section-title">How It Works</h2>
          <p class="section-subtitle">Get started with LogiTracker in three simple steps</p>
        </div>
        <div class="steps-container">
          <div class="step">
            <div class="step-number">1</div>
            <div class="step-content">
              <h3 class="step-title">Connect Your Data</h3>
              <p class="step-description">
                Easily integrate with your existing systems or import your logistics data
              </p>
            </div>
          </div>
          <div class="step">
            <div class="step-number">2</div>
            <div class="step-content">
              <h3 class="step-title">Track & Monitor</h3>
              <p class="step-description">
                Get real-time visibility into your entire supply chain operations
              </p>
            </div>
          </div>
          <div class="step">
            <div class="step-number">3</div>
            <div class="step-content">
              <h3 class="step-title">Optimize & Improve</h3>
              <p class="step-description">
                Use insights and analytics to optimize routes and reduce costs
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Benefits Section -->
    <section class="benefits-section">
      <div class="container">
        <div class="benefits-content">
          <div class="section-header left-aligned">
            <h2 class="section-title">Why Choose LogiTracker</h2>
            <p class="section-subtitle">
              Trusted by logistics companies worldwide to improve efficiency and reduce costs
            </p>
          </div>
          <ul class="benefits-list">
            <li class="benefit-item">
              <i class="fas fa-check-circle"></i>
              <span>Reduce delivery times by up to 30%</span>
            </li>
            <li class="benefit-item">
              <i class="fas fa-check-circle"></i>
              <span>Cut operational costs by 25% with optimized routes</span>
            </li>
            <li class="benefit-item">
              <i class="fas fa-check-circle"></i>
              <span>Improve customer satisfaction with accurate ETAs</span>
            </li>
            <li class="benefit-item">
              <i class="fas fa-check-circle"></i>
              <span>Minimize lost or delayed shipments with real-time tracking</span>
            </li>
            <li class="benefit-item">
              <i class="fas fa-check-circle"></i>
              <span>Scale your operations without increasing overhead</span>
            </li>
          </ul>
          <button class="btn btn-primary">Learn More</button>
        </div>
        <div class="benefits-image">
          <img src="./benefits-image.png" alt="LogiTracker Benefits" />
        </div>
      </div>
    </section>

    <!-- Testimonials Section -->
    <section class="testimonials-section">
      <div class="container">
        <div class="section-header">
          <h2 class="section-title">What Our Customers Say</h2>
          <p class="section-subtitle">Join hundreds of satisfied logistics companies</p>
        </div>
        <div class="testimonials-grid">
          <div class="testimonial-card">
            <div class="testimonial-content">
              <p class="testimonial-text">
                "LogiTracker has transformed our delivery operations. We've reduced our delivery times by 28% and our
                customers love the real-time tracking feature."
              </p>
            </div>
            <div class="testimonial-author">
              <img src="./avatar1.jpg" alt="John Smith" class="author-image" />
              <div class="author-info">
                <h4 class="author-name">John Smith</h4>
                <p class="author-position">Operations Manager, FastShip Inc.</p>
              </div>
            </div>
          </div>
          <div class="testimonial-card">
            <div class="testimonial-content">
              <p class="testimonial-text">
                "The analytics and reporting features have given us insights we never had before. We've optimized our
                routes and saved thousands in fuel costs."
              </p>
            </div>
            <div class="testimonial-author">
              <img src="./avatar2.jpg" alt="Sarah Johnson" class="author-image" />
              <div class="author-info">
                <h4 class="author-name">Sarah Johnson</h4>
                <p class="author-position">Logistics Director, Global Freight Ltd.</p>
              </div>
            </div>
          </div>
          <div class="testimonial-card">
            <div class="testimonial-content">
              <p class="testimonial-text">
                "The customer support team is exceptional. They helped us integrate LogiTracker with our existing
                systems seamlessly."
              </p>
            </div>
            <div class="testimonial-author">
              <img src="./avatar3.jpg" alt="Michael Chen" class="author-image" />
              <div class="author-info">
                <h4 class="author-name">Michael Chen</h4>
                <p class="author-position">CTO, Express Logistics</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
      <div class="container">
        <div class="cta-content">
          <h2 class="cta-title">Ready to Optimize Your Logistics?</h2>
          <p class="cta-subtitle">
            Join thousands of companies already using LogiTracker to streamline their operations
          </p>
          <div class="cta-buttons">
            <button class="btn btn-primary btn-large">Start Free Trial</button>
            <button class="btn btn-secondary btn-large">Contact Sales</button>
          </div>
        </div>
      </div>
    </section>

    <!-- FAQ Section -->
    <section class="faq-section">
      <div class="container">
        <div class="section-header">
          <h2 class="section-title">Frequently Asked Questions</h2>
          <p class="section-subtitle">Find answers to common questions about LogiTracker</p>
        </div>
        <div class="faq-container">
          <div class="faq-item">
            <div class="faq-question">
              <h3>How easy is it to get started with LogiTracker?</h3>
              <i class="fas fa-chevron-down"></i>
            </div>
            <div class="faq-answer">
              <p>
                Getting started with LogiTracker is simple. You can sign up for a free trial, and our onboarding team
                will help you set up your account and integrate with your existing systems. Most customers are up and
                running within a day.
              </p>
            </div>
          </div>
          <div class="faq-item">
            <div class="faq-question">
              <h3>Can LogiTracker integrate with my existing systems?</h3>
              <i class="fas fa-chevron-down"></i>
            </div>
            <div class="faq-answer">
              <p>
                Yes, LogiTracker offers seamless integration with most popular logistics and ERP systems. We provide
                APIs and pre-built connectors for systems like SAP, Oracle, and many others. Our team can help you with
                custom integrations if needed.
              </p>
            </div>
          </div>
          <div class="faq-item">
            <div class="faq-question">
              <h3>Is LogiTracker suitable for small businesses?</h3>
              <i class="fas fa-chevron-down"></i>
            </div>
            <div class="faq-answer">
              <p>
                LogiTracker is designed to scale with your business. We offer plans for businesses of all sizes, from
                small operations to enterprise-level logistics companies. Our pricing is based on your usage and needs.
              </p>
            </div>
          </div>
          <div class="faq-item">
            <div class="faq-question">
              <h3>How secure is my data with LogiTracker?</h3>
              <i class="fas fa-chevron-down"></i>
            </div>
            <div class="faq-answer">
              <p>
                Security is our top priority. LogiTracker uses industry-standard encryption and security protocols to
                protect your data. We are compliant with major security standards and regulations, including GDPR and
                SOC 2.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer component would be imported and used here -->
    <!-- <Footer /> -->
  </div>
</template>

<script>
export default {
  name: 'LandingPage',
  // Import components if needed
  // components: {
  //   Navbar,
  //   Footer
  // }
}
</script>

<style scoped>
/* General Styles */
.landing-page {
  font-family: 'Inter', sans-serif;
  color: #333;
  line-height: 1.6;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 2rem;
}

section {
  padding: 5rem 0;
}

.section-header {
  text-align: center;
  margin-bottom: 3rem;
}

.left-aligned {
  text-align: left;
}

.section-title {
  font-size: 2.5rem;
  font-weight: 700;
  margin-bottom: 1rem;
  color: #333;
}

.section-subtitle {
  font-size: 1.2rem;
  color: #666;
  max-width: 700px;
  margin: 0 auto;
}

/* Button Styles */
.btn {
  display: inline-block;
  padding: 0.8rem 1.5rem;
  border-radius: 5px;
  font-weight: 600;
  text-align: center;
  cursor: pointer;
  transition: all 0.3s ease;
  border: none;
}

.btn-primary {
  background-color: #720707;
  color: #FFFFFF;
}

.btn-primary:hover {
  background-color: #5a0606;
  transform: translateY(-2px);
}

.btn-secondary {
  background-color: transparent;
  color: #720707;
  border: 2px solid #720707;
}

.btn-secondary:hover {
  background-color: rgba(114, 7, 7, 0.1);
  transform: translateY(-2px);
}

.btn-large {
  padding: 1rem 2rem;
  font-size: 1.1rem;
}

/* Hero Section */
.hero-section {
  background: linear-gradient(135deg, #720707 0%, #9a0909 100%);
  color: #FFFFFF;
  padding: 8rem 0 6rem;
  position: relative;
  overflow: hidden;
}

.hero-section .container {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 2rem;
}

.hero-content {
  flex: 1;
  max-width: 600px;
}

.hero-title {
  font-size: 3.5rem;
  font-weight: 800;
  line-height: 1.2;
  margin-bottom: 1.5rem;
}

.hero-subtitle {
  font-size: 1.3rem;
  margin-bottom: 2.5rem;
  opacity: 0.9;
}

.hero-cta {
  display: flex;
  gap: 1rem;
}

.hero-image {
  flex: 1;
  display: flex;
  justify-content: flex-end;
}

.hero-image img {
  max-width: 100%;
  height: auto;
  border-radius: 10px;
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
}

/* Features Section */
.features-section {
  background-color: #f8f9fa;
}

.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 2rem;
}

.feature-card {
  background-color: #FFFFFF;
  border-radius: 10px;
  padding: 2rem;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
  transition: all 0.3s ease;
}

.feature-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
}

.feature-icon {
  font-size: 2.5rem;
  color: #720707;
  margin-bottom: 1.5rem;
}

.feature-title {
  font-size: 1.5rem;
  font-weight: 700;
  margin-bottom: 1rem;
}

.feature-description {
  color: #666;
}

/* How It Works Section */
.steps-container {
  display: flex;
  justify-content: space-between;
  gap: 2rem;
  margin-top: 3rem;
}

.step {
  display: flex;
  align-items: flex-start;
  gap: 1.5rem;
  flex: 1;
}

.step-number {
  background-color: #720707;
  color: #FFFFFF;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.5rem;
  font-weight: 700;
  flex-shrink: 0;
}

.step-title {
  font-size: 1.5rem;
  font-weight: 700;
  margin-bottom: 0.5rem;
}

.step-description {
  color: #666;
}

/* Benefits Section */
.benefits-section {
  background-color: #FFFFFF;
}

.benefits-section .container {
  display: flex;
  align-items: center;
  gap: 4rem;
}

.benefits-content {
  flex: 1;
}

.benefits-list {
  list-style: none;
  padding: 0;
  margin: 2rem 0;
}

.benefit-item {
  display: flex;
  align-items: center;
  margin-bottom: 1.2rem;
  font-size: 1.1rem;
}

.benefit-item i {
  color: #720707;
  margin-right: 1rem;
  font-size: 1.3rem;
}

.benefits-image {
  flex: 1;
}

.benefits-image img {
  max-width: 100%;
  border-radius: 10px;
}

/* Testimonials Section */
.testimonials-section {
  background-color: #f8f9fa;
}

.testimonials-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 2rem;
}

.testimonial-card {
  background-color: #FFFFFF;
  border-radius: 10px;
  padding: 2rem;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
}

.testimonial-content {
  margin-bottom: 1.5rem;
}

.testimonial-text {
  font-style: italic;
  color: #555;
}

.testimonial-author {
  display: flex;
  align-items: center;
  gap: 1rem;
}

.author-image {
  width: 50px;
  height: 50px;
  border-radius: 50%;
  object-fit: cover;
}

.author-name {
  font-weight: 700;
  margin: 0;
}

.author-position {
  color: #666;
  font-size: 0.9rem;
  margin: 0;
}

/* CTA Section */
.cta-section {
  background: linear-gradient(135deg, #720707 0%, #9a0909 100%);
  color: #FFFFFF;
  text-align: center;
  padding: 5rem 0;
}

.cta-content {
  max-width: 800px;
  margin: 0 auto;
}

.cta-title {
  font-size: 2.5rem;
  font-weight: 700;
  margin-bottom: 1rem;
}

.cta-subtitle {
  font-size: 1.2rem;
  margin-bottom: 2.5rem;
  opacity: 0.9;
}

.cta-buttons {
  display: flex;
  justify-content: center;
  gap: 1.5rem;
}

/* FAQ Section */
.faq-container {
  max-width: 800px;
  margin: 0 auto;
}

.faq-item {
  border-bottom: 1px solid #e0e0e0;
  margin-bottom: 1.5rem;
}

.faq-question {
  display: flex;
  justify-content: space-between;
  align-items: center;
  cursor: pointer;
  padding-bottom: 1rem;
}

.faq-question h3 {
  font-size: 1.2rem;
  font-weight: 600;
  margin: 0;
}

.faq-answer {
  padding-bottom: 1.5rem;
  color: #666;
}

/* Responsive Design */
@media (max-width: 992px) {

  .hero-section .container,
  .benefits-section .container {
    flex-direction: column;
  }

  .hero-content,
  .benefits-content {
    max-width: 100%;
  }

  .hero-image,
  .benefits-image {
    margin-top: 3rem;
  }

  .steps-container {
    flex-direction: column;
  }

  .step {
    margin-bottom: 2rem;
  }

  .section-title {
    font-size: 2rem;
  }

  .hero-title {
    font-size: 2.5rem;
  }
}

@media (max-width: 768px) {
  section {
    padding: 4rem 0;
  }

  .cta-buttons {
    flex-direction: column;
    gap: 1rem;
  }

  .hero-cta {
    flex-direction: column;
    gap: 1rem;
  }

  .btn {
    width: 100%;
  }
}

@media (max-width: 576px) {
  .container {
    padding: 0 1rem;
  }

  .section-title {
    font-size: 1.8rem;
  }

  .hero-title {
    font-size: 2rem;
  }
}
</style>
