# Démarrage Rapide - FINDY

**Prêt à tester le site en 2 minutes? Suivez ce guide!**

## Option 1: Sans Installation (Le Plus Simple)

1. **Cloner le repository**
   ```bash
   git clone https://github.com/naelob/FINDY.git
   cd FINDY
   ```

2. **Ouvrir dans le navigateur**
   ```bash
   # MacOS
   open index.html

   # Windows (PowerShell)
   Start-Process index.html

   # Linux
   firefox index.html
   # ou
   chrome index.html
   ```

**Prêt!** Le site fonctionne sans serveur pour les fichiers statiques.

---

## Option 2: Avec Serveur Local (Recommandé)

### Prérequis
- Node.js installé ([télécharger](https://nodejs.org))

### Démarrage

1. **Installer les dépendances**
   ```bash
   npm install
   ```

2. **Lancer le serveur**
   ```bash
   npm start
   ```
   Ou en développement avec auto-reload:
   ```bash
   npm run dev
   ```

3. **Accéder au site**
   ```
   http://localhost:8000
   ```

**C'est en direct!** Le site se recharge automatiquement.

---

## Tester le Formulaire

1. Scroller jusqu'à "Candidature"
2. Remplir le formulaire:
   - **Nom**: Votre nom
   - **Email**: votre@email.com
   - **Téléphone**: +33 6 XX XX XX XX (optionnel)
   - **Message**: Votre message

3. Cliquer "Envoyer Candidature"
4. Voir le message de succès 

---

## Personnaliser le Site

### Changer les Couleurs
Éditer `css/styles.css`:
```css
:root {
    --primary-color: #FF6B6B;      /* Changer cette couleur */
    --secondary-color: #4ECDC4;
    /* ... */
}
```

### Éditer le Contenu
Modifier `index.html`:
- Sections à trouver: `<section id="...">...</section>`
- Texte à chercher: HTML facilement identifiable

### Ajouter une Page
1. Créer `nouvelle-page.html`
2. Copier la structure d'`index.html`
3. Lier dans la navigation

---

## Tester sur Mobile

### Avec le Navigateur
1. Ouvrir DevTools (F12)
2. Cliquer sur "Toggle device toolbar" (ou Ctrl+Shift+M)
3. Sélectionner un appareil mobile

### Avec un Vrai Téléphone (Même réseau)
```bash
# Obtenir votre IP locale
ipconfig getifaddr en0    # MacOS
hostname -I              # Linux
ipconfig                 # Windows

# Puis accéder à:
http://VOTRE-IP:8000
```

---

## Checklist de Démarrage

- [ ] Repository cloné
- [ ] Dépendances installées (si utilisé npm)
- [ ] Serveur lancé
- [ ] Site accessible en http://localhost:8000
- [ ] Formulaire testé
- [ ] Responsive vérifié sur mobile
- [ ] Console (F12) sans erreurs

---

## Problèmes Courants

### "Address already in use"
Le port 8000 est utilisé. Essayer:
```bash
npm run dev    # Utilise un autre port
```

### "Cannot find module 'http-server'"
Installer les dépendances:
```bash
npm install
```

### Les fonts ne chargent pas
- Vérifier les chemins dans `css/styles.css`
- S'assurer que `fonts/` existe

### CSS/JS ne change pas
- Hard refresh: `Ctrl+Shift+R` (ou `Cmd+Shift+R` sur Mac)
- Vider le cache du navigateur

---

## Prochaines Étapes

1. **Lire la doc complète**: [README.md](./README.md)
2. **Déployer sur GitHub Pages**: [DEPLOYMENT.md](./DEPLOYMENT.md)
3. **Contribuer**: [CONTRIBUTING.md](./CONTRIBUTING.md)

---

## Tips

- Utiliser un éditeur (VS Code, Sublime Text)
- Maintenir la console ouverte (F12) pour déboguer
- Tester souvent sur mobile
- Commiter régulièrement sur Git

---

**Besoin d'aide?** Voir [README.md](./README.md) pour plus de détails.

**Bon développement!**
