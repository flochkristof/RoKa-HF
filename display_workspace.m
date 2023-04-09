%% Robotkarok és mobilis robotok HF
% Floch Kristóf I8SNRG

clc; clear; close all;
%% Paraméterek és konfiguráció betöltése
run("params.m");

%% Transzformációs mátrix meghatározása
T_04=get_joint_T(theta, d, a, alpha, 4);


%% Munkatér megjelenítése
Grid=create_grid(lb, ub, 10); % grid készítés a paramétertartományon

positions=zeros(3, size(Grid,1)); % tömb a pozíciók tárolásához

% kiértékelés a griden
for i=1:size(Grid,1)
    res=double(subs(T_04, [q_1,q_2,q_3,q_4], [Grid(i,1),Grid(i,2),Grid(i,3),Grid(i,4)]));
    positions(:,i)=res(1:3,4);
end

% gridpontok megjelenítése
figure;
plot3(positions(1,:),positions(2,:),positions(3,:), '*');
grid on
xlabel("$x$ (m)", "Interpreter","latex");
ylabel("$y$ (m)", "Interpreter","latex");
zlabel("$z$ (m)", "Interpreter","latex");
set(gca,'FontSize', 14)
set(gca,'TickLabelInterpreter','latex');