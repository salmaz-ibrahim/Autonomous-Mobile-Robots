%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 1: paste values for alpha, beta, and ell from   %
%         the answer to the last question              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc ;
clear;
r = 0.1;
% Wheel 1, the far right wheel
alpha1 = 0;
beta1 = 0;
ell1 = 0.5;


% Wheel 2, the top left wheel
alpha2 = 2/3 * pi() ;
beta2 = 0;
ell2 = 0.5;
      

% Wheel 3, the bottom left wheel
alpha3 = 4/3 * pi();
beta3 = 0 ;
ell3 = 0.5;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 2: derive the matrices J and R          
%beta1=beta2=bet3=0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
J = [sin(alpha1) -cos(alpha1) -ell1*cos(0); ....
    sin(alpha2) -cos(alpha2) -ell2*cos(0);....
    sin(alpha3) -cos(alpha3) -ell3*cos(0)];
R = [r 0 0; 0 r 0; 0 0 r];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Step 3: Compute the forward differential             %
%         kinematics matrix, F                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% epsilon = pseudo inverse of J matrix multiplied by R matrix multiplied
% by phi
%since F = eps * phi 
%F = eps
F = pinv(J) * R ;