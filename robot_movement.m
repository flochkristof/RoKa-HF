%% Robotkarok és mobilis robotok HF
% Floch Kristóf I8SNRG

clc; clear; close all;
%% Paraméterek és konfiguráció betöltése
run("params.m");
 
%% Kezdeti és végső konfiguráció megadása, szimuláció hossza
q0=[0,-0.25,-0.2,-0.09];
q1=[2.1,0.3, 0.45, 0.08];
Tsim=5;

%% Szimuláció
res=sim('robot_move.slx','StartTime','0','StopTime',num2str(Tsim));
