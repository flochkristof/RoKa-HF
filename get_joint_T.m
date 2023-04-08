%% Robotkarok és mobilis robotok HF
% Floch Kristóf I8SNRG

function T_out = get_joint_T(theta,d,a, alpha,i)
%GET_JOINT_T Returns the i-th transformation matrix
%   Detailed explanation goes here
T_out=eye(4,4); % egységmátrix a kiindulás

for j=1:i
    T_out=T_out*T(theta(j), d(j), a(j), alpha(j));
end

