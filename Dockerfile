# Utilise une image Node.js officielle légère
FROM node:22-alpine

# Définit le dossier de travail dans le conteneur
WORKDIR /app

# Copie les fichiers de dépendances
COPY package*.json ./

# Installe les dépendances (ici pas de deps externes mais bonne pratique)
RUN npm install --omit=dev

# Copie le reste du code source
COPY . .

# Expose le port utilisé par ton application
EXPOSE 8080

# Commande pour démarrer l'application
CMD ["node", "src/app.js"]