# ============================================
# SCRIPT: Créer le projet FINDY automatiquement
# ============================================

# Créer le dossier principal
$baseFolder = "C:\Users\lipou_903qy1c\Desktop\FINDY"
New-Item -ItemType Directory -Path $baseFolder -Force | Out-Null

# Créer les sous-dossiers
New-Item -ItemType Directory -Path "$baseFolder\css" -Force | Out-Null
New-Item -ItemType Directory -Path "$baseFolder\js" -Force | Out-Null
New-Item -ItemType Directory -Path "$baseFolder\fonts" -Force | Out-Null
New-Item -ItemType Directory -Path "$baseFolder\.github\workflows" -Force | Out-Null

# ============================================
# FICHIER: index.html
# ============================================
$indexHtml = @'
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="FINDY - Une plateforme pour aider les pères à devenir ce qu'ils ont toujours voulu être">
    <title>FINDY - Plateforme Parentale pour les Pères</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/responsive.css">
</head>

<body>
    <!-- Navigation -->
    <nav class="navbar">
        <div class="container">
            <div class="nav-brand">
                <h1>FINDY</h1>
            </div>
            <ul class="nav-menu">
                <li><a href="#home" class="nav-link active">Accueil</a></li>
                <li><a href="#about" class="nav-link">À propos</a></li>
                <li><a href="#gallery" class="nav-link">Galerie</a></li>
                <li><a href="#apply" class="nav-link">Candidature</a></li>
                <li><a href="#contact" class="nav-link">Contact</a></li>
            </ul>
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="hero-content">
            <h2 class="hero-title">Devenir un Père Épanoui</h2>
            <p class="hero-subtitle">FINDY vous aide à devenir ce que vous avez toujours voulu être en tant que père</p>
            <button class="btn btn-primary" onclick="scrollToSection('apply')">Commencer</button>
        </div>
        <div class="hero-background"></div>
    </section>

    <!-- About Section -->
    <section id="about" class="about">
        <div class="container">
            <h2 class="section-title">À Propos de FINDY</h2>
            <div class="about-content">
                <div class="about-text">
                    <p>FINDY est une compagnie qui aide les pères à devenir ce qu'ils ont toujours voulu être. Les pères peuvent maintenant incarner le rôle clé à la maison avec FINDY.</p>
                    <p>Ici vous pourrez apprendre les bases de l'éducation des enfants et de l'auto-soins. Tous nos clients à travers le monde sont satisfaits et nous ne pouvons pas attendre de vous voir parmi nous.</p>
                </div>
                <div class="about-stats">
                    <div class="stat">
                        <h3>+500</h3>
                        <p>Pères Épanouis</p>
                    </div>
                    <div class="stat">
                        <h3>+50</h3>
                        <p>Cours Disponibles</p>
                    </div>
                    <div class="stat">
                        <h3>100%</h3>
                        <p>Satisfaction Client</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Gallery Section -->
    <section id="gallery" class="gallery">
        <div class="container">
            <h2 class="section-title">Nos Moments</h2>
            <div class="gallery-grid">
                <div class="gallery-item">
                    <div style="width: 200px; height: 200px; margin: 0 auto 20px; background: #FFD700; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 24px; color: white;">👨‍👩‍👧‍👦</div>
                    <h3>Famille Unies</h3>
                </div>
                <div class="gallery-item">
                    <div style="width: 200px; height: 200px; margin: 0 auto 20px; background: #87CEEB; border-radius: 8px; display: flex; align-items: center; justify-content: center; font-size: 24px; color: white;">👨‍👧</div>
                    <h3>Paternité Joyeuse</h3>
                </div>
                <div class="gallery-item">
                    <div style="width: 200px; height: 200px; margin: 0 auto 20px; background: #FF6347; border-radius: 8px; display: flex; align-items: center; justify-content: center; font-size: 24px; color: white;">✈️</div>
                    <h3>Aventures</h3>
                </div>
                <div class="gallery-item">
                    <div style="width: 200px; height: 200px; margin: 0 auto 20px; background: #32CD32; border-radius: 8px; display: flex; align-items: center; justify-content: center; font-size: 24px; color: white;">🍖</div>
                    <h3>Moments Partagés</h3>
                </div>
            </div>
        </div>
    </section>

    <!-- Apply Section -->
    <section id="apply" class="apply">
        <div class="container">
            <h2 class="section-title">Postuler à FINDY</h2>
            <div class="apply-content">
                <div class="apply-info">
                    <h3>Documents Requis</h3>
                    <ul class="requirements-list">
                        <li><strong>CV (Curriculum Vitae)</strong> - Préférence PDF</li>
                        <li><strong>Documents Additionnels</strong> - Diplômes, certificats (en un seul PDF de préférence)</li>
                        <li><strong>Lettre de Motivation</strong> - Optionnelle</li>
                    </ul>
                </div>
                <div class="apply-form-container">
                    <form class="apply-form" id="applyForm">
                        <div class="form-group">
                            <label for="name">Nom Complet</label>
                            <input type="text" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Téléphone</label>
                            <input type="tel" id="phone" name="phone">
                        </div>
                        <div class="form-group">
                            <label for="message">Message</label>
                            <textarea id="message" name="message" rows="5" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Envoyer Candidature</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section id="services" class="services">
        <div class="container">
            <h2 class="section-title">Nos Services</h2>
            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon">🔍</div>
                    <h3>Recherche d'Emploi</h3>
                    <p>Trouvez des offres d'emploi adaptées à votre profil</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">👤</div>
                    <h3>Profil Personnel</h3>
                    <p>Créez et gérez votre profil professionnel</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">📋</div>
                    <h3>Candidatures en Ligne</h3>
                    <p>Postulez facilement à travers notre portail</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">🔔</div>
                    <h3>Alertes Emploi</h3>
                    <p>Recevez les nouvelles offres par notification</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">📊</div>
                    <h3>Suivi Candidature</h3>
                    <p>Suivez l'évolution de vos candidatures</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">💬</div>
                    <h3>Support Client</h3>
                    <p>Une équipe prête à vous aider 24/7</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="contact">
        <div class="container">
            <h2 class="section-title">Nous Contacter</h2>
            <div class="contact-content">
                <div class="contact-info">
                    <div class="info-item">
                        <h4>Email</h4>
                        <p>contact@findy.com</p>
                    </div>
                    <div class="info-item">
                        <h4>Téléphone</h4>
                        <p>+33 1 23 45 67 89</p>
                    </div>
                    <div class="info-item">
                        <h4>Adresse</h4>
                        <p>123 Rue de la Paternité<br>75001 Paris, France</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p>&copy; 2024 FINDY. Tous droits réservés.</p>
            <div class="social-links">
                <a href="#" class="social-link">Facebook</a>
                <a href="#" class="social-link">Twitter</a>
                <a href="#" class="social-link">Instagram</a>
            </div>
        </div>
    </footer>

    <script src="js/main.js"></script>
</body>

</html>
'@

Set-Content -Path "$baseFolder\index.html" -Value $indexHtml -Encoding UTF8

# ============================================
# FICHIER: css/styles.css (VERSION SIMPLIFIÉE)
# ============================================
$stylesCss = @'
@font-face {
    font-family: "Bariol";
    src: url("../fonts/bariol.ttf") format("truetype");
}

:root {
    --primary-color: #FF6B6B;
    --secondary-color: #4ECDC4;
    --dark-color: #2D3436;
    --light-color: #F5F6FA;
    --text-dark: #2D3436;
    --text-light: #636E72;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "Bariol", Arial, sans-serif;
    color: var(--text-dark);
    line-height: 1.6;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.btn {
    padding: 12px 30px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: 1px;
}

.btn-primary {
    background-color: var(--primary-color);
    color: white;
}

.btn-primary:hover {
    background-color: #E74C3C;
    transform: translateY(-2px);
}

.section-title {
    font-size: 42px;
    text-align: center;
    margin-bottom: 50px;
    color: var(--dark-color);
    position: relative;
    width: 100%;
}

.navbar {
    background-color: white;
    padding: 15px 0;
    position: sticky;
    top: 0;
    z-index: 1000;
    box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
}

.navbar .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.nav-brand h1 {
    font-size: 32px;
    color: var(--primary-color);
    font-weight: bold;
}

.nav-menu {
    display: flex;
    list-style: none;
    gap: 40px;
}

.nav-link {
    color: var(--text-dark);
    text-decoration: none;
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    position: relative;
}

.nav-link.active {
    color: var(--primary-color);
}

.hamburger {
    display: none;
    flex-direction: column;
    cursor: pointer;
}

.hamburger span {
    width: 25px;
    height: 3px;
    background-color: var(--text-dark);
    margin: 5px 0;
    border-radius: 2px;
}

.hero {
    min-height: 600px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    text-align: center;
}

.hero-title {
    font-size: 56px;
    margin-bottom: 20px;
    font-weight: bold;
}

.hero-subtitle {
    font-size: 20px;
    margin-bottom: 30px;
}

.about {
    padding: 80px 0;
    background-color: var(--light-color);
}

.about-content {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 60px;
    align-items: center;
}

.about-text p {
    font-size: 16px;
    color: var(--text-light);
    margin-bottom: 20px;
    text-align: justify;
}

.about-stats {
    display: grid;
    grid-template-columns: 1fr;
    gap: 30px;
}

.stat {
    text-align: center;
    padding: 30px;
    background: white;
    border-radius: 8px;
    box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
}

.stat h3 {
    font-size: 36px;
    color: var(--primary-color);
    margin-bottom: 10px;
}

.stat p {
    color: var(--text-light);
    font-size: 14px;
}

.gallery {
    padding: 80px 0;
}

.gallery-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 40px;
}

.gallery-item {
    text-align: center;
}

.gallery-item h3 {
    color: var(--dark-color);
    font-size: 18px;
}

.apply {
    padding: 80px 0;
    background: linear-gradient(135deg, #F5F6FA 0%, #E8E9EF 100%);
}

.apply-content {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 60px;
}

.apply-info h3 {
    font-size: 24px;
    margin-bottom: 30px;
    color: var(--dark-color);
}

.requirements-list {
    list-style: none;
}

.requirements-list li {
    padding: 15px;
    margin-bottom: 15px;
    background: white;
    border-left: 4px solid var(--primary-color);
    border-radius: 8px;
}

.apply-form {
    background: white;
    padding: 40px;
    border-radius: 8px;
}

.form-group {
    margin-bottom: 25px;
}

.form-group label {
    display: block;
    margin-bottom: 8px;
    color: var(--dark-color);
    font-size: 14px;
}

.form-group input,
.form-group textarea {
    width: 100%;
    padding: 12px 15px;
    border: 2px solid #E8E9EF;
    border-radius: 8px;
    font-family: inherit;
    font-size: 14px;
}

.form-group input:focus,
.form-group textarea:focus {
    outline: none;
    border-color: var(--primary-color);
}

.apply-form .btn {
    width: 100%;
    margin-top: 20px;
}

.services {
    padding: 80px 0;
}

.services-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 40px;
}

.service-card {
    padding: 40px;
    text-align: center;
    background: white;
    border-radius: 8px;
    box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
    border-top: 4px solid var(--primary-color);
}

.service-icon {
    font-size: 48px;
    margin-bottom: 20px;
}

.service-card h3 {
    color: var(--dark-color);
    font-size: 20px;
    margin-bottom: 15px;
}

.service-card p {
    color: var(--text-light);
    font-size: 14px;
}

.contact {
    padding: 80px 0;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
}

.contact-content {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 40px;
}

.info-item {
    text-align: center;
    padding: 30px;
}

.info-item h4 {
    font-size: 18px;
    margin-bottom: 15px;
}

.footer {
    background-color: var(--dark-color);
    color: white;
    padding: 40px 0;
    text-align: center;
}

.footer .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.social-links {
    display: flex;
    gap: 20px;
}

.social-link {
    color: white;
    text-decoration: none;
    font-size: 14px;
}

@media (max-width: 768px) {
    .nav-menu {
        gap: 20px;
    }

    .hero-title {
        font-size: 36px;
    }

    .about-content {
        grid-template-columns: 1fr;
    }

    .apply-content {
        grid-template-columns: 1fr;
    }

    .footer .container {
        flex-direction: column;
        gap: 20px;
    }
}

@media (max-width: 480px) {
    .hamburger {
        display: flex;
    }

    .nav-menu {
        position: fixed;
        left: -100%;
        top: 70px;
        flex-direction: column;
        background-color: white;
        width: 100%;
        text-align: center;
        transition: 0.3s;
        padding: 20px 0;
    }

    .nav-menu.active {
        left: 0;
    }

    .hero-title {
        font-size: 28px;
    }

    .section-title {
        font-size: 24px;
    }
}
'@

Set-Content -Path "$baseFolder\css\styles.css" -Value $stylesCss -Encoding UTF8

# ============================================
# FICHIER: css/responsive.css
# ============================================
$responsiveCss = @'
@media (max-width: 768px) {
    .section-title {
        font-size: 32px;
    }

    .about-stats {
        grid-template-columns: repeat(3, 1fr);
    }

    .gallery-grid {
        grid-template-columns: repeat(2, 1fr);
    }
}

@media (max-width: 480px) {
    .section-title {
        font-size: 24px;
    }

    .about-stats {
        grid-template-columns: 1fr;
    }

    .gallery-grid {
        grid-template-columns: 1fr;
    }

    .services-grid {
        grid-template-columns: 1fr;
    }

    .apply-form {
        padding: 20px;
    }
}

@media (max-width: 320px) {
    .hero-title {
        font-size: 24px;
    }

    .section-title {
        font-size: 20px;
    }
}
'@

Set-Content -Path "$baseFolder\css\responsive.css" -Value $responsiveCss -Encoding UTF8

# ============================================
# FICHIER: js/main.js
# ============================================
$mainJs = @'
const hamburger = document.querySelector(".hamburger");
const navMenu = document.querySelector(".nav-menu");
const navLinks = document.querySelectorAll(".nav-link");
const applyForm = document.getElementById("applyForm");

if (hamburger) {
    hamburger.addEventListener("click", () => {
        hamburger.classList.toggle("active");
        navMenu.classList.toggle("active");
    });
}

navLinks.forEach(link => {
    link.addEventListener("click", () => {
        hamburger.classList.remove("active");
        navMenu.classList.remove("active");
    });
});

window.addEventListener("scroll", () => {
    let current = "";
    const sections = document.querySelectorAll("section");

    sections.forEach(section => {
        const sectionTop = section.offsetTop;
        if (pageYOffset >= sectionTop - 200) {
            current = section.getAttribute("id");
        }
    });

    navLinks.forEach(link => {
        link.classList.remove("active");
        if (link.getAttribute("href").slice(1) === current) {
            link.classList.add("active");
        }
    });
});

function scrollToSection(sectionId) {
    const section = document.getElementById(sectionId);
    if (section) {
        section.scrollIntoView({ behavior: "smooth" });
    }
}

if (applyForm) {
    applyForm.addEventListener("submit", function(e) {
        e.preventDefault();

        const name = document.getElementById("name").value.trim();
        const email = document.getElementById("email").value.trim();
        const phone = document.getElementById("phone").value.trim();
        const message = document.getElementById("message").value.trim();

        if (!name || !email || !message) {
            showNotification("Veuillez remplir tous les champs obligatoires", "error");
            return;
        }

        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            showNotification("Veuillez entrer une adresse email valide", "error");
            return;
        }

        showNotification("Candidature envoyée avec succès! Nous vous recontacterons bientôt.", "success");
        applyForm.reset();

        console.log({
            name: name,
            email: email,
            phone: phone,
            message: message,
            timestamp: new Date().toISOString()
        });
    });
}

function showNotification(message, type = "info") {
    const notification = document.createElement("div");
    notification.style.cssText = `
        position: fixed;
        top: 20px;
        right: 20px;
        padding: 15px 25px;
        border-radius: 8px;
        font-size: 14px;
        z-index: 10000;
        max-width: 300px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    `;

    if (type === "success") {
        notification.style.backgroundColor = "#27AE60";
        notification.style.color = "white";
    } else if (type === "error") {
        notification.style.backgroundColor = "#E74C3C";
        notification.style.color = "white";
    } else {
        notification.style.backgroundColor = "#3498DB";
        notification.style.color = "white";
    }

    notification.textContent = message;
    document.body.appendChild(notification);

    setTimeout(() => {
        notification.remove();
    }, 4000);
}

console.log("%cFINDY - Plateforme Parentale", "font-size: 20px; font-weight: bold; color: #FF6B6B;");
console.log("%cBienvenue sur FINDY!", "font-size: 14px; color: #4ECDC4;");
'@

Set-Content -Path "$baseFolder\js\main.js" -Value $mainJs -Encoding UTF8

# ============================================
# FICHIER: package.json
# ============================================
$packageJson = @'
{
  "name": "findy-app",
  "version": "1.0.0",
  "description": "FINDY - Plateforme parentale pour aider les pères",
  "main": "index.html",
  "scripts": {
    "start": "npx http-server -p 8000 -o",
    "serve": "npx http-server -p 8000",
    "dev": "npx live-server"
  },
  "keywords": ["fatherhood", "parenting", "education", "findy"],
  "author": "FINDY Team",
  "license": "MIT"
}
'@

Set-Content -Path "$baseFolder\package.json" -Value $packageJson -Encoding UTF8

# ============================================
# FICHIER: .gitignore
# ============================================
$gitignore = @'
node_modules/
npm-debug.log*
.DS_Store
.env
dist/
build/
'@

Set-Content -Path "$baseFolder\.gitignore" -Value $gitignore -Encoding UTF8

# ============================================
# FICHIER: README.md
# ============================================
$readmeMd = @'
# 🎯 FINDY - Plateforme Parentale

Une plateforme web moderne et responsive pour aider les pères à devenir ce qu'ils ont toujours voulu être.

## ✨ Caractéristiques

- ✅ Design responsive (Mobile-first)
- ✅ Navigation mobile avec hamburger menu
- ✅ Formulaire de candidature avec validation
- ✅ Animations CSS fluides
- ✅ Performance optimale
- ✅ Code propre et maintenable

## 🚀 Démarrage Rapide

### Sans Installation
```bash
1. Ouvrir index.html dans un navigateur
```

### Avec Serveur Local
```bash
npm install
npm start
# Accéder à http://localhost:8000
```

## 📱 Responsive Design

- ✅ Desktop (> 1024px)
- ✅ Tablet (768px - 1024px)
- ✅ Mobile (< 768px)

## 📝 Sections

- **Accueil** - Hero section accrocheur
- **À Propos** - Présentation et statistiques
- **Galerie** - Visuels inspirants
- **Candidature** - Formulaire d'application
- **Services** - 6 services principaux
- **Contact** - Informations de contact

## 🛠️ Technologies

- HTML5 sémantique
- CSS3 responsive
- JavaScript vanilla ES6+
- 0 dépendances requises

## 📖 Documentation

- Voir README.md pour la doc complète

## 🚀 Déploiement

### GitHub Pages (Gratuit)
1. Créer un repository GitHub
2. Pousser le code: `git push`
3. Activer Pages dans Settings
4. Site live en quelques minutes!

### Autres Options
- Netlify: Drag & drop
- Vercel: Git integration
- Hébergement classique: FTP upload

## 📞 Support

Email: contact@findy.com

## 📄 License

MIT License
'@

Set-Content -Path "$baseFolder\README.md" -Value $readmeMd -Encoding UTF8

# ============================================
# AFFICHER LE RÉSULTAT
# ============================================
Write-Host "
╔════════════════════════════════════════════════╗
║  ✅ PROJET FINDY CRÉÉ AVEC SUCCÈS!            ║
╠════════════════════════════════════════════════╣
║  Dossier: $baseFolder        ║
║                                                ║
║  Fichiers créés:                               ║
║  ✓ index.html                                  ║
║  ✓ css/styles.css                              ║
║  ✓ css/responsive.css                          ║
║  ✓ js/main.js                                  ║
║  ✓ package.json                                ║
║  ✓ .gitignore                                  ║
║  ✓ README.md                                   ║
║                                                ║
║  Prochaines étapes:                            ║
║  1. cd $baseFolder    ║
║  2. npm install                                ║
║  3. npm start                                  ║
║  4. Ouvrir http://localhost:8000               ║
║                                                ║
╚════════════════════════════════════════════════╝
"

# Ouvrir le dossier
explorer $baseFolder
