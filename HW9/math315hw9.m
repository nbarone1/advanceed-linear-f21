%%% Math 351
%%% Homework 9

% 1 x = i, i in [1,100]
A = ones(1,100)';
b = [1:1:100]';
x = (inv(A'*A))*A'*b

% Use script for inner product multiplication and projections

% 2 P
P1 = eye(3);
% 4 P
P2 = [4,1,0;1,2,-1;0,-1,3];
% 2 and 4 vector w and non orthonormal basis
v = [0;0;1];
b1 = [1;0;1];
bb2 = [0;1;2];
b2 = bb2 - proj(bb2,b1,P1);

% 2 Orthoogonal basis
u1 = b1/sqrt(innerprod(b1,b1,P1));
u2 = b2/sqrt(innerprod(b2,b2,P1));
a2 = v-proj(v,b1,P1)-proj(v,b2,P1);

b2 = bb2-proj(bb2,b1,P2);

% 4 Orthogonal/normal basis
u1 = b1/sqrt(innerprod(b1,b1,P2));
u2 = b2/sqrt(innerprod(b2,b2,P2));
a4 = v-proj(v,b1,P2)-proj(v,b2,P2);

% 3 basis for x'Kx+b'x+c minimization
w1 = [1;-2;-2;1;1];
w2 = [2;1;4;-4;2];
w3 = [5;-4;-3;7;1];
v = [1;2;3;4;5];

% a find K,b,c
% K = A'*A
%   A is basis
w2 = w2-proj(w2,w1,1);
w3 = w3-proj(w3,w1,1)-proj(w3,w2,1);
w1 = w1/sqrt(innerprod(w1,w1,1));
w2 = w2/sqrt(innerprod(w2,w2,1));
w3 = w3/sqrt(innerprod(w3,w3,1));
A3 = [w1 w2 w3];
K = A3'*A3;
b3 = A3'*v;
c = b3'*inv(K)*b3;
P = A3*A3';
w = P*[1;2;3;4;5]
