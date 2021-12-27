%%% Nicholas Barone
%%% Goebel
%%% Math 315
%%% Homework 10

% Variables, C1,C2,C3 represent amount of each Cargo
% each is broken into F# and B# to represent the amount in each space
% F constraints 16 ton. 8700 m^3
% B 8 ton. 5300 m^3
% C1 = 18 ton. 480 m^3/ton. $310/ton.
% C2 = 15 ton. 650 m^3/ton. $380/ton.
% C3 = 23 ton. 580 m^3/ton. $350/ton.
% F1+F2+F3 = 2*(B1+B2+B3)
% Maximize $310*C1+$380*C2+$350*C3

prof = [-310 -380 -350 -310 -380 -350];
Fval = [18 15 23;
        480*18 650*15 580*23];

vals = [Fval zeros(2,3);
    zeros(2,3) Fval;
    eye(3) eye(3)];

aim = [16;8700;8;5300;1;1;1];
balance = [18/16 15/16 23/16 -18/8 -15/8 -23/8];

s = linprog(prof,vals,aim,balance,0,[0;0;0;0;0;0]);

maxprof = prof*s*-1;

% 5.5.3

% Let year 1989 be year 1
Y = [ones(1,11); 0:10];
P = [86.4;89.8;92.8;96.0;96.06;103.1;106.3;109.5;113.3;120.0;129.5];

x = (inv(Y*Y'))*Y*P;

p05 = [1 16]*x;
p10 = [1 21]*x;

% 5.5.5

% Let 1960 be year 1

T = [ones(1,8); 0:5:35];
M = [86;99.8;115.8;125;132.6;143.1;156.3;169.5];

xx = (inv(T*T'))*T*M;

p00 = [1 40]*xx;
p005 = [1 45]*xx;

% solve using the y=ce^at

% turn log y into b and solve for the alpha and beta as a linear solution

y = log(M);

xc = (inv(T*T'))*T*y;

e00 = exp([1 40]*xc);
e05 = exp([1 45]*xc);
