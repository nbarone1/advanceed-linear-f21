%%% Matrix Inner Product Multiplication
function r = innerprod(v,w,P)
% r is result
% v and w are vectors
% P is inner product matrix
r = v'*P*w;