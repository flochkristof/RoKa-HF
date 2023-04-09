%% Robotkarok és mobilis robotok HF
% Floch Kristóf I8SNRG

clc; clear; close all;
%% Paraméterek betöltése
run("params.m");

%% Csuklóváltozó értékek definiálása
setpoint= [1.9, -0.2, 0.45, -0.09];


%% TCP számítás csuklóváltozók alapján
T_04=get_joint_T(theta, d, a, alpha, 4);
res=double(subs(T_04, [q_1,q_2,q_3,q_4], setpoint));
disp("===== Denavit-Hartenberg alak =====")
p_DH=res(1:3,4)
R_DH=res(1:3,1:3)



%% TCP számítás a Simulink-Simscape modell alapján
res=sim("robot_setpoint_test.slx");
disp("======= Simulink-Simscape =======")
p_SIM=res.p
R_SIM=res.R

%% Ellenőrzés
eps=1e-12;
if norm(transpose(p_SIM)-p_DH)<eps && norm(R_SIM-R_DH)
    disp("================================================================")
    disp("A pozíció és orientáció értékek megegyeznek, validáció sikeres!");
else
    disp("================================================================")
    disp("Sikertelen a validálás: eltérő pozíció és orientáció ertékek!");
end

