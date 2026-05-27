# Guide de Déploiement - FINDY

Ce guide explique comment déployer le site FINDY sur différentes plateformes.

## Prérequis

- Compte GitHub avec repository créé
- (Optionnel) Comptes sur Netlify, Vercel, ou autre plateforme

## Option 1: GitHub Pages (Recommandé - GRATUIT)

### Étapes:

1. **Pousser le code sur GitHub**
   ```bash
   git add .
   git commit -m "Initial commit - FINDY website"
   git branch -M main
   git remote add origin https://github.com/YOUR-USERNAME/FINDY.git
   git push -u origin main
   ```

2. **Activer GitHub Pages**
   - Aller sur GitHub → Repository → Settings
   - Aller à "Pages" (en bas à gauche)
   - Source: Sélectionner `main` branch
   - Save

3. **Site Live**
   - URL: `https://YOUR-USERNAME.github.io/FINDY`
   - Attendre 1-2 minutes pour le déploiement

### Avantages
- Complètement gratuit
- Déploiement automatique à chaque push
- Domaine GitHub inclus
- HTTPS automatique

## Option 2: Netlify

### Étapes:

1. **Créer un compte** sur [netlify.com](https://netlify.com)

2. **Connecter GitHub**
   - Dashboard → "New site from Git"
   - Autoriser Netlify
   - Sélectionner le repository FINDY

3. **Configuration Build**
   - Build Command: (laisser vide)
   - Publish Directory: `/` (ou la racine du repo)
   - Deploy!

4. **Domaine Personnalisé** (optionnel)
   - Settings → Domain Management
   - Ajouter votre domaine

### Avantages
- Interface intuitive
- Déploiement automatique
- HTTPS gratuit
- Analytics intégrés

## Option 3: Vercel

### Étapes:

1. **Créer un compte** sur [vercel.com](https://vercel.com)

2. **Importer Projet**
   - Dashboard → "Import Project"
   - Sélectionner "Other Git Repository"
   - Entrer URL du repository
   - Import

3. **Configuration**
   - Framework: Other
   - Root Directory: ./
   - Deploy!

### Avantages
- Très rapide
- Excellent pour les sites statiques
- Déploiement préview automatique
- CLI disponible

## Option 4: Hébergement Classique (Bluehost, OVH, etc.)

### Étapes:

1. **Accéder au File Manager**
2. **Naviguer vers `public_html` ou `www`**
3. **Uploader tous les fichiers**
   ```
   index.html
   css/
   js/
   fonts/
   .gitignore
   package.json
   README.md
   etc...
   ```
4. **Accéder via votre domaine**

## Déploiement Manual via FTP

### Outils:
- FileZilla (gratuit)
- WinSCP
- Cyberduck (Mac)

### Processus:
1. Se connecter en FTP
2. Naviguer vers dossier web
3. Uploader fichiers
4. Vérifier les permissions (755 pour dossiers, 644 pour fichiers)

## Vérification Post-Déploiement

### Checklist:
- [ ] Site accessible via URL
- [ ] Tous les assets chargent (CSS, JS, Fonts)
- [ ] Navigation mobile fonctionne
- [ ] Formulaire fonctionne (si backend configuré)
- [ ] Pas d'erreurs console (F12)
- [ ] Responsive sur mobile
- [ ] Images/SVG affichés correctement

### Outils de test:
```bash
# Lighthouse (Chrome)
- Ouvrir DevTools (F12)
- Onglet "Lighthouse"
- "Generate report"

# Google PageSpeed Insights
https://pagespeed.web.dev/

# Responsive Design Test
https://responsively.app/
```

## Configuration SSL/HTTPS

- **GitHub Pages**: Automatique 
- **Netlify**: Automatique 
- **Vercel**: Automatique 
- **Hébergement classique**: Vérifier certificat de l'hôte

## Monitoring & Analytics

### Google Analytics
```html
<!-- Ajouter dans <head> -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_ID');
</script>
```

## Troubleshooting

### Les fonts ne chargent pas
- Vérifier les chemins d'accès dans CSS
- S'assurer que les fichiers .ttf sont présents
- Vérifier les permissions

### CORS Errors
- Héberger depuis le même domaine
- Vérifier configuration serveur

### Site pas à jour après push
- Hard refresh (Ctrl+Shift+R)
- Vider le cache du navigateur
- Attendre 5 min pour GitHub Pages

## Performance Tips

1. **Minifier les assets**
   ```bash
   npm install -g minify
   minify css/styles.css > css/styles.min.css
   ```

2. **Optimiser les images**
   - Convertir en WebP
   - Compresser les SVG
   - Lazy loading

3. **Caching**
   - Ajouter headers de cache
   - Service Worker (optionnel)

## Mise à Jour Continue

1. **Local**
   ```bash
   git add .
   git commit -m "Update: description du changement"
   git push origin main
   ```

---

**Bon déploiement!**
