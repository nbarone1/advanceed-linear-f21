% 1.2.7 315 HW 1
A = [1,-1,3;-1,4,2;3,0,6];
B = [-6,0,3;4,2,-1];
C = [2,3;-3,-4;1,-2];
I = eye(3);

% D = (3*A)-B
% A and B are not the same size

% D = A.*B
% A and B do not have compatible sizes, B needs 3 rows or A needs 2 columns

D = B*A
% D =
% 
%      3     6     0
%     -1     4    10

% D = (A+B)C
% A+B has wrong sizes

% D = A+B*C
% B*C is not 3x3

D = A+2*C*B
% D =
% 
%      1    11     9
%      3   -12    -8
%    -25    -8    16

% D = B*C*B-I
% B*C*B is 2x3 no 3x3

D = A^2-3*A-I
% D =
% 
%      1    11     9
%      3   -12    -8
%    -25    -8    16

% D = (B-I)*(C+I)
% B and C are not square so I is unable to be added or subtracted