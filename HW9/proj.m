%%% Taking the projection of vector V onto W
function s = proj(v,w,P)
% s is result 
% v is vector being projected onto W
% P is matrix for innerproduct
s = (innerprod(v,w,P)/(innerprod(w,w,P)))*w;