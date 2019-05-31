# Cubli_1_axe
guide d'implémentation de la commande d'un cubli 1 axe

Le projet était de continuer le travail effectuer par un précédent groupe, il faut donc ajouter aux données ici les infos tirées de:
https://github.com/ABonnefoy/Cubli_ENS_Rennes

De plus les études qui ont motivés ce projet ainsi que leurs articles scientifiques sont retrouvables à:
http://www.idsc.ethz.ch/research-dandrea/research-projects/archive/cubli.html

Pour le centre de gravité j'ai accroché le carré à un pivot et j'ai mesure l'angle de la diagonale par rapport à l'axe horizontal
Pour les inerties c'était de manière géométrique
J'ai mesuré la masse volumique
Et en considérant que la géométrie est la même que celle de la doc j'en ai déduit les inerties

Parce que l'inertie c'est la masse volumique fois un facteur dépendant uniquement de la géométrie
Et pour les coefficients de frottements j'ai fait tourner le truc à haute vitesse, j'ai mesure par traitement d'image la constante de temps (inertie / coeff de frottement) et j'en ai déduit le coeff de frottement
