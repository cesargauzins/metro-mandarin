# Métro Mandarin

Le chinois de survie pour partir en Chine, façon Duolingo. Le parcours est un plan du métro de Shanghai : 12 lignes thématiques (bases, hôtel, restaurant, taxi, marchandage, vie étudiante, urgences…), 60 stations et 240 phrases avec caractères, pinyin, traduction et audio.

**En ligne :** https://cesargauzins.github.io/metro-mandarin/

- Exercices : découverte, traduction dans les deux sens, écoute, construction de phrases, situations réelles (serveur, réception d'hôtel, chauffeur).
- XP, série de jours, objectif quotidien, rythme calculé pour être prêt avant la date de départ.
- Lexique avec recherche et mode « Montrer en grand » pour montrer une phrase à quelqu'un.

Connexion avec Google : la progression et le classement entre amis sont stockés dans Firebase (Firestore, règles dans `firestore.rules` : chacun lit les fiches et n'écrit que la sienne). On peut aussi jouer sans compte, la progression reste alors dans le navigateur.

## Fichiers

- `metro-mandarin.html` : la source (contenu de la page).
- `index.html` : page autonome générée par `sh build.sh` (ajoute Firebase).
- `firestore.rules` : règles de sécurité, déployées avec `firebase deploy --only firestore:rules`.
