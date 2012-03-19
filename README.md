Demo WebSocket : Salle de discussion
====================================

Mini maquette mettant en oeuvre les WebSockets.

Serveur
-------

Le serveur est cod� en Ruby.

Dans un terminal, dans le r�pertoire `websocket_salle_de_discussion/serveur`, ex�cuter `ruby discussion.rb`. Le serveur de la salle de discussion �coutera sur le port 10000.

Client
------

Le client est compatible Chrome, Safari 5+, Firefox 4+ (utilisation du pr�fixe �Moz� pour Firefox 6 � 10) et probablement IE 10.

Ouvrir le fichier `websocket_salle_de_discussion\client\discussion.html` dans plusieurs navigateurs diff�rents (ou plusieurs onglets). Chacun de ces navigateurs (ou onglets) est connect� � la m�me salle de discussion et participe � la m�me conversation.


**NB :** Cette maquette ne fonctionne qu�en local. La variable `host` (fichier `discussion.html`, ligne 15) peut �tre modifi�e pour une utilisation multi-postes.

