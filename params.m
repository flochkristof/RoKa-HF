%% Robotkarok és mobilis robotok HF
% Floch Kristóf I8SNRG
% fileok:
%            - display_robot.m: koordinátarendszerek és munkatér ábrázolása
%            - params.m:  DH paraméterektet tartalmazó file

%% csukló szimbolikus változók
syms q_1 q_2 q_3 q_4
q=[q_1; q_2; q_3; q_4];

%% Robot DH paraméterek kiírás alapján
theta_1=q_1;    theta_2=q_2;  theta_3=q_3;  theta_4=0;
theta=[theta_1; theta_2; theta_3; theta_4];

d_1=0;          d_2=0;        d_3=0;        d_4=q_4;
d=[d_1; d_2; d_3; d_4];

a_1=0.2;        a_2=0.2;      a_3=0.1;      a_4=0.3;
a=[a_1;a_2;a_3;a_4];

alpha_1=-pi/2;  alpha_2=0;    alpha_3=pi;   alpha_4=pi/2;
alpha=[alpha_1; alpha_2; alpha_3; alpha_4];

%% Csulóváltozók határértékei
lb=[  0,   -0.4, -0.25,  -0.1];
ub=[2.4,    0.4,   0.5,   0.1];



