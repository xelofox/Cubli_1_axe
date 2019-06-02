# Cubli_1_axe
guide d'implémentation de la commande d'un cubli 1 axe

Le projet était de continuer le travail effectuer par un précédent groupe, il faut donc ajouter aux données ici les infos tirées de:
https://github.com/ABonnefoy/Cubli_ENS_Rennes

De plus les études qui ont motivés ce projet ainsi que leurs articles scientifiques sont retrouvables à:
http://www.idsc.ethz.ch/research-dandrea/research-projects/archive/cubli.html

Caractéristiques du prototype

Les caractéristiques du prototypes présentées sur le poster ont étaient déterminées de la façon suivante:

Les masses ont été déterminées en les pesant 

Le centre de gravité a été déterminé en accrochant le carré à un pivot et en mesurant l'angle de la diagonale par rapport à l'axe horizontal

Pour les inerties la méthode était géométrique la masse volumique volumique a été déterminé en relevant les dimensions et la masse et en considérant que la géométrie est la même que celle de celles des études des articles scientifiques (ce qui est le cas), les inerties en sont déduites (en prenant en compte les différences dans les dimensions).

Pour les coefficients de frottements, on a fait se balancer le carré et on a relevé la décroissance de ses oscillations qui décroit selon la constante de temps inertie / coeff de frottement. Pour le moteur on a fait de même en le faisant tourner très vite au départ. Les observations ont était faites avec un logiciel de traitement d'image.

Ces caractéristiques sont retrouvables sur le script matlab Parametre.m.

Commande LQR 

La commande implémenter a été la même que celle des articles scientifiques, elle se retrouve aussi dans le script matlab à l'aide de la fonction LQR de matlab. Les coefficients de matrices Q et R peut être modifié à convenance en fonction de comment l'on veut que le système réagisse (violement ou lentement).

Modélisation
La modélisation avec l'application de la commande LQR est retrouvable sur le fichier simulink Modele17.slx

L'implémentation à envoyer sur le microprocesseur est le fichier commandemoteur.slx, les pins à branchés sur la carte sont retrouvable dans la documentation de la carte (DAC etc).
