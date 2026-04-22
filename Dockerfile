FROM node:20.20-alpine

# se rendre dans le dossier de l'app 
# RUN cd /app
WORKDIR /app

# Copier le code de l'app dans le conteneur  (./* signifie tous les fichiers du dossier simpleApp et les copier dans le dossier de travail du conteneur)
COPY . /simpleApp/* ./

#lancer la commande npm intall
RUN npm install

EXPOSE 3000

#Executer l'app en arriere plan
CMD ["node", "index.js"]
