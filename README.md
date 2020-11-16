## Prérequis
git, docker
(voir install.sh, bien le personnaliser)

## Construction de l'image docker de DEV
/!\ cette image n'est pas destiné a de la PROD
```
cd aws-docker
./build.sh
```

## Lancement du container en mode DEV classique
(serveur hugo avec detection des changements)
```
./start.sh
```

## Lancement du container en mode TEST de génération
TODO
Le conteneur contient un nginx mais il n'est pas encore utilisé

## Déploiement
TODO
Le conteneur contient le cli aws mais il n'est pas encore utilisé