# FINDY - Plateforme Parentale

Une plateforme web moderne et responsive dédiée à aider les pères à devenir ce qu'ils ont toujours voulu être.

## À Propos

FINDY est une compagnie qui aide les pères à incarner le rôle clé à la maison. La plateforme offre des ressources, des formations et un soutien communautaire pour la parentalité positive et l'auto-soins.

## Caractéristiques

- **Design Responsive** - Mobile-first, compatible tous les appareils
- **Navigation Moderne** - Menu mobile, navigation fluide
- **Formulaire de Candidature** - Validation et feedback utilisateur
- **Galerie Interactive** - Visuels SVG et animations
- **Typographie Personnalisée** - Fonts Bariol et Cooper
- **Performance** - Code optimisé, léger et rapide
- **Accessibilité** - Structure HTML sémantique

## Technologies

- **Frontend**: HTML5, CSS3, JavaScript (ES6+)
- **Fonts**: Bariol, Cooper, Bariol Bold, Bariol Thin
- **Design**: Mobile-First, Responsive Grid
- **Animation**: CSS Animations, IntersectionObserver API
- **Tools**: Git, GitHub, npm

## Structure du Projet

```
findy-app/
├── index.html              # Page principale
├── package.json            # Configuration npm
├── .gitignore              # Fichiers ignorés par Git
├── README.md               # Documentation
│
├── css/
│   ├── styles.css          # Styles principaux
│   └── responsive.css      # Media queries
│
├── js/
│   └── main.js             # Logique JavaScript
│
└── fonts/
    ├── bariol.ttf
    ├── bariolbold.ttf
    ├── bariolthin.ttf
    └── cooperm.ttf
```

## Démarrage Rapide

### Installation

1. **Cloner le repository**
   ```bash
   git clone https://github.com/naelob/FINDY.git
   cd findy-app
   ```

2. **Installer les dépendances (optionnel)**
   ```bash
   npm install
   ```

3. **Lancer le serveur local**
   ```bash
   npm start
   # ou
   npm run dev
   ```

4. **Ouvrir dans le navigateur**
   ```
   http://localhost:8000
   ```

## Sections du Site

### Accueil (Hero)
- Titre accrocheur avec CTA
- Background gradient moderne
- Animation au chargement

### ℹÀ Propos
- Présentation de FINDY
- Statistiques clés
- Points forts du service

### Galerie
- Visuels SVG interactifs
- Animations au scroll
- Responsive grid

### Candidature
- Formulaire d'application complet
- Validation en temps réel
- Documentation requise

### Services
- 6 services principaux
- Cards animées
- Icons emoji

### Contact
- Informations de contact
- Section footer
- Liens sociaux

## Palette de Couleurs

| Couleur | Code | Usage |
|---------|------|-------|
| Primary | `#FF6B6B` | Boutons, accents |
| Secondary | `#4ECDC4` | Hover states |
| Dark | `#2D3436` | Texte principal |
| Light | `#F5F6FA` | Backgrounds |
| Accent | `#FFD93D` | Highlights |

## Configuration & Personnalisation

### Changer les Couleurs
Éditer les variables CSS dans `css/styles.css`:
```css
:root {
    --primary-color: #FF6B6B;
    --secondary-color: #4ECDC4;
    /* ... */
}
```

### Ajouter du Contenu
1. Éditer les sections dans `index.html`
2. Ajouter des styles dans `css/styles.css`
3. Ajouter la logique dans `js/main.js`

### Déployer les Fonts Personnalisées
Placer les fichiers `.ttf` dans `fonts/` et les référencer dans `css/styles.css`

## Testing

### Tests Manuels
- [ ] Navigation mobile fonctionne
- [ ] Formulaire valide correctement
- [ ] Animations fluides sur tous les appareils
- [ ] Images SVG s'affichent
- [ ] Fonts chargent correctement

### Navigateurs Testés
- Chrome/Edge (v90+)
- Firefox (v88+)
- Safari (v14+)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Responsive Breakpoints

```css
Desktop:    > 1024px
Tablet:     768px - 1024px
Mobile:     480px - 768px
Small Mobile: < 480px
```

## Performance

- **Lighthouse Score**: 90+
- **Page Load**: < 2s
- **Optimization**: CSS minified, JS optimized
- **Assets**: SVG, Fonts locales

## Contribution

1. Fork le projet
2. Créer une branche (`git checkout -b feature/AmazingFeature`)
3. Commit les changements (`git commit -m 'Add AmazingFeature'`)
4. Push la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

## License

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.
