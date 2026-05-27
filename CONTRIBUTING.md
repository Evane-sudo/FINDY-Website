# Guide de Contribution

Merci de votre intérêt pour contribuer à FINDY! Ce document fournit les directives et les meilleures pratiques.

## Avant de Commencer

1. Lisez le [README.md](./README.md)
2. Vérifiez les [Issues](https://github.com/naelob/FINDY/issues) existantes
3. Suivez le code de conduite

## Processus de Contribution

### 1. Fork & Clone
```bash
git clone https://github.com/YOUR-USERNAME/FINDY.git
cd findy-app
```

### 2. Créer une Branche
```bash
git checkout -b feature/nom-de-la-feature
# ou
git checkout -b fix/nom-du-bug
```

### 3. Développer
- Respectez le style de code existant
- Testez vos changements
- Commentez votre code

### 4. Commit
```bash
git add .
git commit -m "description claire du changement"
```

### 5. Push & Pull Request
```bash
git push origin feature/nom-de-la-feature
```
Créez une PR sur GitHub avec une description détaillée.

## Directives de Code

### HTML
- Utilisez des balises sémantiques
- Indentez avec 4 espaces
- Commentez les sections principales

### CSS
- Classes au lieu d'IDs (sauf necessaire)
- Mobile-first approach
- Utilisez les variables CSS pour les couleurs

### JavaScript
- ES6+ syntax
- Noms de variables clairs
- Fonctions courtes et réutilisables
- Commentez la logique complexe

## Checklist pour les PR

- [ ] Code testé
- [ ] Responsive sur mobile
- [ ] Pas d'erreurs console
- [ ] Commentaires dans le code
- [ ] README mis à jour
- [ ] Pas de console.log de debug

## Signaler un Bug

1. Vérifiez que c'est vraiment un bug
2. Utilisez le template Issue
3. Incluez:
   - Description du bug
   - Étapes pour reproduire
   - Comportement attendu
   - Screenshots (si applicable)

## Suggérer une Feature

1. Utilisez le template Discussion
2. Décrivez clairement la feature
3. Expliquez le bénéfice utilisateur
4. Attendez le feedback

## Merging Policy

Une PR sera fusionnée si:
- Tests réussis
- Code review approuvée
- Pas de conflits
- Respecte les guidelines

## Ressources

- [Git Guide](https://github.com/git-tips/tips)
- [HTML Best Practices](https://www.w3.org/TR/html/)
- [CSS Guidelines](https://cssguidelin.es/)
- [JavaScript Style Guide](https://google.github.io/styleguide/jsguide.html)

---

**Merci de contribuer!**
