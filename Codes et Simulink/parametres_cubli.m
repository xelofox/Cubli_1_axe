%Param�tres m�caniques du cubli

mb=0.43;
mw=0.096;
l=9.65*0.01;
lb=10.35*0.01;
Ib=3.43*(10^(-3));
Iw=2.63*(10^(-4));
Cb=9.97*(10^(-2));
%Cw=1.54*(10^(-4));
%Cw = 2.04e-4;
Cw=2.95e-5;
g=9.81;
Ki=25.1*0.001;

% Principe de la commande LQR
% Q=eye(4,4); %poids donn� � la commande (commande violente)
% R=0.1*eye(4,4);
%x' = A*x+B*U
%x = [ob ob' ow'] en colonne
%u = tm
%u = -K*x


% Impl�mentation de la commande LQR
A3=[0 1 0 ;
   (mb*lb+mw*l)*g/(Ib+mw*l^2) -Cb/(Ib+mw*l^2)  Cw/(Ib+mw*l^2);
   -(mb*lb+mw*l)*g/(Ib+mw*l^2) Cb/(Ib+mw*l^2)  -Cw*(Ib+Iw+mw*l^2)/(Iw*(Ib+mw*l^2))];

B3=Ki*[0;
   -1/(Ib+mw*l^2);
   (Ib+Iw+mw*l^2)/(Iw*(Ib+mw*l^2))];

alpha = 0;
Q3=eye(3,3);
R3=0.1;
N3=0;

Theta_b_ini=0.125;
Tm_sat=3.0;

[K3,S3,e3]=lqr(A3,B3,Q3,R3,N3);

%Fr�quence de fonctionnement de l'impl�mentation du microprocesseur
freq_proc=10000;