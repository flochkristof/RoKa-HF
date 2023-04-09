%% Robotkarok és mobilis robotok HF
% Floch Kristóf I8SNRG

clc; clear; close all;
%% Paraméterek és konfiguráció betöltése
run("params.m");
 
%% Kezdeti és végső konfiguráció megadása, szimuláció hossza
q0=[0,0,-0.2,-0.09];
q1=[2.1,0, 0.45, 0.08];
Tsim=5;

%% Szimuláció
res=sim('robot_move.slx','StartTime','0','StopTime',num2str(Tsim));

%% TPC pozíció megjelenítése

% x,y,z idő függvény
figure;
plot(res.p.Time, res.p.Data(:,1), "color", "red", "LineWidth",1.5);
hold on
plot(res.p.Time, res.p.Data(:,2), "color", "green","LineWidth",1.5);
plot(res.p.Time, res.p.Data(:,3), "color", "blue","LineWidth",1.5);
legend("$x$", "$y$", "$z$", "interpreter", "latex", "Location","best");
grid on;
set(gca,'FontSize', 14)
set(gca,'TickLabelInterpreter','latex');
xlabel("Time (s)", "Interpreter","latex");
ylabel("Position (m)", "Interpreter","latex");

% 3D grafikon
figure;
plot3(res.p.Data(:,1),res.p.Data(:,2),res.p.Data(:,3), "color", "black", "LineWidth",1.5);
grid on;
set(gca,'FontSize', 14)
set(gca,'TickLabelInterpreter','latex');
xlabel("$x$ (m)", "Interpreter","latex");
ylabel("$y$ (m)", "Interpreter","latex");
zlabel("$z$ (m)", "Interpreter","latex");


%% Csulkóváltozók megjelenítése
figure;
plot(res.q.Time, res.q.Data(:,1), "color", "red", "LineWidth",1.5);
hold on
plot(res.q.Time, res.q.Data(:,2), "color", "green","LineWidth",1.5);
plot(res.q.Time, res.q.Data(:,3), "color", "blue","LineWidth",1.5);
plot(res.q.Time, res.q.Data(:,4), "color", "magenta","LineWidth",1.5);
legend("$q_1$ (rad)", "$q_2$ (rad)", "$q_3$ (rad)", "$q_4$ (m)", "interpreter", "latex", "Location","best");
grid on;
set(gca,'FontSize', 14)
set(gca,'TickLabelInterpreter','latex');
xlabel("Time (s)", "Interpreter","latex");
ylabel("Joint variables", "Interpreter","latex");


%% Csulkókban ható nyomatékok/erők megjelenítése
figure;
plot(res.tau.Time, res.tau.Data(:,1), "color", "red", "LineWidth",1.5);
hold on
plot(res.tau.Time, res.tau.Data(:,2), "color", "green","LineWidth",1.5);
plot(res.tau.Time, res.tau.Data(:,3), "color", "blue","LineWidth",1.5);
plot(res.tau.Time, res.tau.Data(:,4), "color", "magenta","LineWidth",1.5);
legend("$\tau_1$ (Nm)", "$\tau_2$ (Nm)", "$\tau_3$ (Nm)", "$\tau_4$ (N)", "interpreter", "latex", "Location","best");
grid on;
set(gca,'FontSize', 14)
set(gca,'TickLabelInterpreter','latex');
xlabel("Time (s)", "Interpreter","latex");
ylabel("Joint torque/force", "Interpreter","latex");


