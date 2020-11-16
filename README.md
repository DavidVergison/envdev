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
Visiter ensuite : http://localhost:1313/

## Lancement du container en mode TEST de génération
(génération "one-shoot", servie par un nginx)
```
./start.sh
```
Visiter ensuite : http://localhost:8080/


## Déploiement
TODO
Le conteneur contient le cli aws mais il n'est pas encore utilisé