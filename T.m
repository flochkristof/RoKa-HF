%% Robotkarok és mobilis robotok HF
% Floch Kristóf I8SNRG

function T_out = T(theta,d,a,alpha)
%T Transformation matrix function for the Denavit Hartemberg convention

T_out=[cos(theta), -sin(theta)*cos(alpha),  sin(theta)*sin(alpha), a*cos(theta);
       sin(theta),  cos(theta)*cos(alpha), -cos(theta)*sin(alpha), a*sin(theta);
       0,           sin(alpha),             cos(alpha),            d;
       0,           0                       0,                     1];   


end

