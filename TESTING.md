# Guide de Test - FINDY

Guide complet pour tester le site FINDY avant déploiement.

## Tests Locaux

### 1. Tests de Chargement Basiques

```bash
# Test 1: Ouvrir simplement le fichier HTML
open index.html  # ou double-cliquer sur le fichier
```

**Résultats attendus:**
- Page charge sans erreurs
- Tous les éléments visibles
- Pas de texte d'erreur

### 2. Tests avec Serveur

```bash
# Installation
npm install

# Lancer serveur
npm start

# Accéder à
http://localhost:8000
```

**Tests:**
- Site accessible
- Rechargement rapide
- Assets chargent correctement

## Tests d'Apparence

### Desktop (> 1024px)
- Navigation horizontale visible
- Contenu en 2 colonnes (About)
- Services en 3 colonnes
- Hamburger menu CACHÉ

### Tablet (768px - 1024px)
```bash
# Dans navigateur (F12)
- Redimensionner à 768px
```
- Navigation adapté
- Colonnes réduites
- Texte lisible

### Mobile (< 480px)
```bash
# Dans navigateur (F12)
- Sélectionner "iPhone 12" ou similaire
```
- Hamburger menu VISIBLE
- Texte optimisé
- Boutons tactiles (48px+)
- Pas de scroll horizontal

## Tests Fonctionnels

### Navigation

**Tests:**
1. Cliquer sur chaque lien du menu
   - Smooth scroll vers la section
   - URL change (si ancre)
   - Pas de défilement abrupt

2. Mobile: Tester hamburger
   - Cliquer ouvre/ferme menu
   - Cliquer lien ferme menu
   - Animation fluide

3. Active links
   - Lien actif surligné (couleur)
   - Change en scrollant
   - Soulignage déroulant

### Formulaire

**Tests:**
1. Champs requis
   ```
   Nom: [laisser vide]
   Email: [laisser vide]
   Message: [laisser vide]
   Cliquer Envoyer
   ```
   - Notification erreur
   - Message: "Veuillez remplir tous les champs"

2. Email invalide
   ```
   Nom: John
   Email: invalid-email  [SANS @]
   Message: Test
   Cliquer Envoyer
   ```
   - Notification erreur
   - Message: "Email valide"

3. Formulaire valide
   ```
   Nom: John Doe
   Email: john@example.com
   Téléphone: +33 6 12 34 56 78
   Message: Je m'intéresse à FINDY
   Cliquer Envoyer
   ```
   - Notification succès (vert)
   - Message: "Candidature envoyée"
   - Formulaire réinitialisé
   - Pas d'erreurs console (F12)

### Animations

**Tests:**
1. Scroll animations
   - Scroller vers les sections
   - Cards apparaissent progressivement
   - Animations fluides
   - Pas de saccade

2. Hover effects
   - Service cards changent d'ombre
   - Boutons changent de couleur
   - Links s'underline

3. Hero animation
   - Recharger la page
   - Hero title animé (slide down)
   - Animation au chargement

## Tests Spécifiques

### Fonts

1. Vérifier Bariol charge
   - Texte normal (regular)
   - Texte gras (bold)
   - Texte fin (thin)

2. Vérifier Cooper charge
   - Titres en serif (Cooper)
   - Aspect distinct des autres textes

**Tester:**
- Ouvrir DevTools (F12)
- Onglet "Network"
- Rafraîchir page
- Chercher fichiers .ttf
- Status 200 (loaded)

### Couleurs

- Primary (#FF6B6B) sur boutons
- Secondary (#4ECDC4) sur hover
- Dark (#2D3436) sur texte
- Light (#F5F6FA) sur backgrounds

### SVG Gallery

- 4 images SVG visibles
- Responsive (redimensionnent)
- Pas d'erreurs console

## Tests de Performance

### Lighthouse (Chrome)

```bash
1. Ouvrir DevTools (F12)
2. Onglet "Lighthouse"
3. Cliquer "Generate report"
```

**Résultats attendus:**
- Performance: 90+ (vert)
- Accessibility: 90+ (vert)
- Best Practices: 90+ (vert)
- SEO: 90+ (vert)

### PageSpeed Insights

```
Aller sur: https://pagespeed.web.dev/
Entrer URL local (si déployé)
```

**Résultats attendus:**
- Score Mobile: 85+
- Score Desktop: 90+

### Console

```bash
1. Ouvrir DevTools (F12)
2. Onglet "Console"
3. Rafraîchir
```

**Résultats attendus:**
- Pas d'erreurs (rouge)
- Pas de warnings (jaune) majeurs
- Message de bienvenue FINDY

### Network

```bash
1. DevTools → Network
2. Rafraîchir
```

**Résultats attendus:**
- index.html: 200
- styles.css: 200
- responsive.css: 200
- main.js: 200
- Toutes fonts: 200
- Total < 500KB

## Tests Mobile Réels

### iPhone

1. Sur le même Wi-Fi que l'ordi
2. Obtenir IP locale: `ipconfig getifaddr en0`
3. Sur iPhone: `http://IP:8000`
4. Site fonctionne
5. Responsive correct
6. Touch events OK

### Android

1. Même procédure
2. Site accessible
3. Formulaire fonctionne

## Tests de Sécurité

### XSS (Injection)

```javascript
// Tester dans console
document.body.innerHTML = '<script>alert("XSS")</script>'
```

- Pas d'injection
- Site protégé (HTML escaping)

### CORS

- Pas d'erreurs CORS
- Assets chargent

## Checklist Finale

### Avant Déploiement

```
☑ Tous les liens marchent
☑ Formulaire valide correctement
☑ Responsive sur tous les breakpoints
☑ Fonts chargent
☑ Pas d'erreurs console
☑ Animations fluides
☑ Performance optimale (Lighthouse 95+)
☑ Navigation mobile fonctionne
☑ Aucun typo visible
☑ Tous les textes lisibles
☑ Couleurs cohérentes
☑ SVG affichés correctement
☑ Notifications working
☑ Scroll smooth working
☑ Mobile tested sur vrai appareil
```

### Après Déploiement

```
☑ Site accessible via URL
☑ Pas de 404 errors
☑ HTTPS actif
☑ Lighthouse score bon
☑ Mobile test Google
☑ Social links working (si configurés)
☑ Analytics tracking (si configuré)
```

## Déboguer les Problèmes

### Site blanc/vide

```bash
1. Ouvrir Console (F12)
2. Chercher erreurs rouges
3. Vérifier chemins fichiers (Network tab)
4. Vérifier permissions fichiers
```

### Fonts ne chargent pas

```bash
1. DevTools → Network
2. Filtrer par .ttf
3. Vérifier status 200
4. Vérifier chemin dans CSS
5. Vérifier CORS headers
```

### Formulaire ne fonctionne pas

```bash
1. Ouvrir Console
2. Chercher erreurs JavaScript
3. Vérifier IDs des éléments
4. Tester en créant log: console.log('test')
```

### Responsive cassée

```bash
1. Vérifier media queries dans responsive.css
2. Vérifier viewport meta tag
3. Tester breakpoints exacts
4. Vérifier CSS specificity
```

## Test Final End-to-End

Simulation complète d'un utilisateur:

1. **Arriver sur le site**
   - Page charge
   - Hero visible

2. **Explorer le site**
   - Cliquer tous les liens
   - Lire toutes les sections

3. **Tester formulaire**
   - Invalide → Erreur
   - Valide → Succès

4. **Tester sur mobile**
   - Menu hamburger OK
   - Responsive OK

5. **Performance**
   - Chargement rapide
   - Pas de lag

## Template de Rapport de Test

```
Date: [DATE]
Testeur: [NOM]
Environnement: [DESKTOP/MOBILE]
Navigateur: [CHROME/FIREFOX/etc]

Tests passés: ✅
- Navigation: OK
- Formulaire: OK
- Responsive: OK
- Performance: OK

Problèmes trouvés: ❌
- [Décrire le problème]
- Étapes pour reproduire
- Résultat attendu
- Résultat actuel

Notes:
[Commentaires supplémentaires]
```

---

**Tests complets = Déploiement en confiance!**
