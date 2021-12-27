% HW2 Math 315

% 1.3.2 f
f = [-1, 3, -1 1; 1, -1, 3, -1; 0, 1, -1, 4; 4, -1, 1 0];
b = [-2; 0; 7; 5];
x = b\f
% x =
% 
%     0.2821   -0.0513   -0.0000    0.3333

%1.3.21 c, g
c = [-1, 1 -1; 1, 1 1; -1, 1, 2];
[Lc,Uc] = lu(c)

% Lc =
% 
%      1     0     0
%     -1     1     0
%      1     0     1
% 
% 
% Uc =
% 
%     -1     1    -1
%      0     2     0
%      0     0     3

g = [1,0,-1,0;0,2,-1,-1;-1,3,0,2;0,-1,2,1];
[Lg,Ug,Pg] = lu(g)

% Lg =
% 
%     1.0000         0         0         0
%    -1.0000    1.0000         0         0
%          0   -0.3333    1.0000         0
%          0    0.6667   -0.2000    1.0000
% 
% 
% Ug =
% 
%     1.0000         0   -1.0000         0
%          0    3.0000   -1.0000    2.0000
%          0         0    1.6667    1.6667
%          0         0         0   -2.0000
% 
% 
% Pg =
% 
%      1     0     0     0
%      0     0     1     0
%      0     0     0     1
%      0     1     0     0
     
     
% 1.4.2

a = [2,1;1,4];
b = [3,-2,1;-1,4,4;2,2,5];
cc = [1,-2,3;-2,4,-1;3,-1,2];
d = [1,3,-3,0;-1,0,-1,2;3,-2,6,1;2,-1,3,5];
ai = inv(a);
bi=inv(b); % provides inverse but gives warning about a singular matrix
cci=inv(c);
di=inv(d);
[La,Ua]= lu(a);
[Lb,Ub]= lu(b);
[Lcc,Ucc]= lu(cc);
[Ld,Ud]= lu(d);

%a = i,ii
%b = i,iii
%c = ii
%d = ii

% 1.4.21 b, e

bb = [0,0,-4;1,2,3;0,1,7];
bbb = [1;2;-1];
e = [0,1,0,0;2,3,1,0;1,4,-1,2;7,-1,2,3];
be = [-1;-4;0;5];
teste = be\e
[Lbb,Ubb,Pbb] = lu(bb);
[Le,Ue,Pe] = lu(e);
bbb = Pbb*[1;2;-1];
be = Pe*be;
ybb = inv(Lbb)*bbb;
xbb = ybb\Ubb;
ye = inv(Le)*be;
xe = ye\Ue

% xbb =
% 
%     0.3333    0.5000   -0.8333

% solving for xe has presented issues,
% should be getting teste values not xe.
% xe =
% 
%     0.7114   -0.1618    0.0788    0.4903
% teste =
% 
%     0.6429   -0.4286    0.1429    0.3571