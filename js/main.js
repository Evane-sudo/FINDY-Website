// ==================== DOM ELEMENTS ====================
const hamburger = document.querySelector('.hamburger');
const navMenu = document.querySelector('.nav-menu');
const navLinks = document.querySelectorAll('.nav-link');
const applyForm = document.getElementById('applyForm');

// ==================== MOBILE MENU TOGGLE ====================
hamburger.addEventListener('click', () => {
    hamburger.classList.toggle('active');
    navMenu.classList.toggle('active');
});

// Close mobile menu when a link is clicked
navLinks.forEach(link => {
    link.addEventListener('click', () => {
        hamburger.classList.remove('active');
        navMenu.classList.remove('active');
    });
});

// ==================== SMOOTH SCROLL & ACTIVE NAVIGATION ====================
window.addEventListener('scroll', () => {
    let current = '';
    const sections = document.querySelectorAll('section');

    sections.forEach(section => {
        const sectionTop = section.offsetTop;
        const sectionHeight = section.clientHeight;
        if (pageYOffset >= sectionTop - 200) {
            current = section.getAttribute('id');
        }
    });

    navLinks.forEach(link => {
        link.classList.remove('active');
        if (link.getAttribute('href').slice(1) === current) {
            link.classList.add('active');
        }
    });
});

// ==================== SCROLL TO SECTION ====================
function scrollToSection(sectionId) {
    const section = document.getElementById(sectionId);
    if (section) {
        section.scrollIntoView({ behavior: 'smooth' });
        hamburger.classList.remove('active');
        navMenu.classList.remove('active');
    }
}

// ==================== FORM SUBMISSION ====================
applyForm.addEventListener('submit', function(e) {
    e.preventDefault();

    // Get form values
    const name = document.getElementById('name').value.trim();
    const email = document.getElementById('email').value.trim();
    const phone = document.getElementById('phone').value.trim();
    const message = document.getElementById('message').value.trim();

    // Simple validation
    if (!name || !email || !message) {
        showNotification('Veuillez remplir tous les champs obligatoires', 'error');
        return;
    }

    // Email validation
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
        showNotification('Veuillez entrer une adresse email valide', 'error');
        return;
    }

    // Success message
    showNotification('Candidature envoyée avec succès! Nous vous recontacterons bientôt.', 'success');

    // Reset form
    applyForm.reset();

    // Log data (in a real app, you'd send this to a server)
    console.log({
        name: name,
        email: email,
        phone: phone,
        message: message,
        timestamp: new Date().toISOString()
    });
});

// ==================== NOTIFICATION SYSTEM ====================
function showNotification(message, type = 'info') {
    // Remove existing notifications
    const existingNotif = document.querySelector('.notification');
    if (existingNotif) {
        existingNotif.remove();
    }

    // Create notification element
    const notification = document.createElement('div');
    notification.className = `notification notification-${type}`;
    notification.textContent = message;
    notification.style.cssText = `
        position: fixed;
        top: 20px;
        right: 20px;
        padding: 15px 25px;
        border-radius: 8px;
        font-family: "Bariol-Bold", sans-serif;
        font-size: 14px;
        z-index: 10000;
        animation: slideInRight 0.3s ease;
        max-width: 300px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    `;

    // Set color based on type
    if (type === 'success') {
        notification.style.backgroundColor = '#27AE60';
        notification.style.color = 'white';
    } else if (type === 'error') {
        notification.style.backgroundColor = '#E74C3C';
        notification.style.color = 'white';
    } else {
        notification.style.backgroundColor = '#3498DB';
        notification.style.color = 'white';
    }

    document.body.appendChild(notification);

    // Auto remove after 4 seconds
    setTimeout(() => {
        notification.style.animation = 'fadeOut 0.3s ease';
        setTimeout(() => notification.remove(), 300);
    }, 4000);
}

// ==================== SCROLL ANIMATIONS ====================
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -100px 0px'
};

const observer = new IntersectionObserver(function(entries) {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.animation = 'fadeIn 0.6s ease forwards';
            observer.unobserve(entry.target);
        }
    });
}, observerOptions);

// Observe gallery items and service cards
document.querySelectorAll('.gallery-item, .service-card, .stat').forEach(el => {
    el.style.opacity = '0';
    observer.observe(el);
});

// ==================== ADD FADE OUT ANIMATION ====================
const style = document.createElement('style');
style.textContent = `
    @keyframes fadeOut {
        from {
            opacity: 1;
            transform: translateX(0);
        }
        to {
            opacity: 0;
            transform: translateX(30px);
        }
    }

    @keyframes slideInRight {
        from {
            opacity: 0;
            transform: translateX(30px);
        }
        to {
            opacity: 1;
            transform: translateX(0);
        }
    }
`;
document.head.appendChild(style);

// ==================== PAGE LOAD EFFECT ====================
window.addEventListener('load', () => {
    document.body.style.opacity = '1';
});

document.body.style.opacity = '0';
document.body.style.transition = 'opacity 0.5s ease';
document.addEventListener('DOMContentLoaded', () => {
    document.body.style.opacity = '1';
});

// ==================== CONSOLE WELCOME ====================
console.log('%cFINDY - Plateforme Parentale', 'font-size: 20px; font-weight: bold; color: #FF6B6B;');
console.log('%cBienvenue sur FINDY!', 'font-size: 14px; color: #4ECDC4;');
