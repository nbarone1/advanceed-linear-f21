% HW3 MATH 315

%1.8.1 (f)
f = [3, -2, 1,4;1,3,-4,-3;2,-3,5,7;1,-8,9,10];
[Lf,Uf,Pf] = lu(f)
% can solve using backwards substitution, has a unique solution.

%1.8.1 (g)
g = [1,2,17,-5,50;9,-16,10,-8,24;2,-5,-4,0,-13;6,-12,1,-4,-1];
[Lg,Ug,Pg] = lu(g)
% Can solve using backwards substitution, has a unique solution.

%1.8.7 (h)
h = [1,-1,2,1;2,1,-1,0;1,2,-3,-1;4,-1,3,2;0,3,-5,-2];
k = rank(h)
%rank is 2

%1.9.1 (g)
gg = [1,-2,1,4,-5;1,1,-2,3,-3;2,-1,-1,2,2;5,-1,0,5,5;2,2,0,4,-1];
[Lgg,Ugg,Pgg] = lu(gg);
dgg = -1*(5*2.4*-2*5*0.5)
% dgg = 60, -1 because permuted flips sign
%check
detgg = det(gg)
%detgg = 60
