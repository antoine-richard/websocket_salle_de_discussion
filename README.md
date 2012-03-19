Demo WebSocket : Salle de discussion
====================================

Mini maquette mettant en oeuvre les WebSockets.

Serveur
-------

Le serveur est codé en Ruby.

Dans un terminal, dans le répertoire `websocket_salle_de_discussion/serveur`, exécuter `ruby discussion.rb`. Le serveur de la salle de discussion écoutera sur le port 10000.

Client
------

Le client est compatible Chrome, Safari 5+, Firefox 4+ (utilisation du préfixe “Moz” pour Firefox 6 à 10) et probablement IE 10.

Ouvrir le fichier `websocket_salle_de_discussion\client\discussion.html` dans plusieurs navigateurs différents (ou plusieurs onglets). Chacun de ces navigateurs (ou onglets) est connecté à la même salle de discussion et participe à la même conversation.


**NB :** Cette maquette ne fonctionne qu’en local. La variable `host` (fichier `discussion.html`, ligne 15) peut être modifiée pour une utilisation multi-postes.

