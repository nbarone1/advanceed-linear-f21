% Nicholas Barone
% Goebel
% Math 315
% Homework 5
% 2.6.1, 2.6.4 e f, 2.6.5, 3.1.4 b, 3.1.10

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 2.6.1
% a - hand work will show matrix

s = [1 2 3 4 5 6];
t = [2 3 4 5 6 7];
G = graph(s,t);
I = incidence(G);

% Find the source nodes from incidence matrix
[s2,~] = find( I == -1 )

% Find the target nodes from incidence matrix
[t2,~] = find( I == 1 )

% Generate graph from source and target nodes (digraph for direction)
G2 = digraph( s2, t2 );
figure;
plot( G2 );

% Checking to make sure the graphs align
I2 = incidence(G2);

assert( isequal(I, I2), 'Did not generate same incidence matrices' );

% b
A = [1,-1,0,0,0,0,0;
    0,1,-1,0,0,0,0;
    0,0,1,-1,0,0,0;
    0,0,0,1,-1,0,0;
    0,0,0,0,1,-1,0;
    0,0,0,0,0,1,-1,;];
% set vars = {a,b,c,d,e,f,g}
% g is free variable
% a = -b = g
% b = -c = -g
% c = -d = g
% d = -e = -g
% e = -f = g
% f = -g
% g = g

basisA = [1;-1;1;-1;1;-1;1]

% c - No circuits, as the graph shows, it is a straight line.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 2.6.4
% e

E = [1,-1,0,0,0,0;
    0,1,-1,0,0,0;
    -1,0,1,0,0,0;
    0,0,0,1,-1,0;
    0,0,0,0,1,-1;
    0,0,0,-1,0,1];
% E = incidence matrix and O is operation to get rref.
O = [1,0,0,0,0,0;
    0,1,0,0,0,0;
    1,1,1,0,0,0;
    0,0,0,1,0,0;
    0,0,0,0,1,0;
    0,0,0,1,1,1];
E = O*E
% Looking at new E, there are two free variables
% var = {a,b,c,d,e,f}  and c and f are free
% coker = c[1,1,1,0,0,0]+f[0,0,0,1,1,1]
    % implies two circuits as the two bases have 3 distinct linear
    % combinations

% f
% see hand written work
% var = {a,b,c,d,e,f,g,h}
% coker = g[3;-3;-2;-1;-1;1;1;0]+h[1;0;3;2;2;-1;0;1]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 2.6.5

% see hand written work

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 3.1.4
% b
% see hand written work

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 3.1.10
% see hand written work