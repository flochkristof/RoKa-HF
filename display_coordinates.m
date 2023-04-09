%% Robotkarok és mobilis robotok HF
% Floch Kristóf I8SNRG

clc; clear;
%% Paraméterek és konfiguráció betöltése
run("params.m");

%% Transzformációs mátrixok minden csuklóra
T_01=get_joint_T(theta, d, a, alpha, 1);
T_02=get_joint_T(theta, d, a, alpha, 2);
T_03=get_joint_T(theta, d, a, alpha, 3);
T_04=get_joint_T(theta, d, a, alpha, 4);


%% Koordináta-rendszerek ábrázolása
% egységvektorok és origó
e_x=[1;0;0;1];
e_y=[0;1;0;1];
e_z=[0;0;1;1];
o  =[0;0;0;1];
disp("Add meg a csuklóváltozók értékeit!")
prompt = "q1=";
q1 = input(prompt);
prompt = "q2=";
q2 = input(prompt);
prompt = "q3=";
q3 = input(prompt);
prompt = "q4=";
q4 = input(prompt);


% egyésgvektorokat az adott csuklóhoz rendelt koordinátarendszerekből
% visszatranszformálhatók, így ábrázolható egyszerűen a koordonátarendszer

% bázis koordináták
figure;
plot3([o(1),e_x(1)/10],[o(2),e_x(2)/10],[o(3),e_x(3)/10], "Color","red", "LineWidth",1.5);
hold on
plot3([o(1),e_y(1)/10],[o(2),e_y(2)/10],[o(3),e_y(3)/10], "Color","green","LineWidth",1.5);
plot3([o(1),e_z(1)/10],[o(2),e_z(2)/10],[o(3),e_z(3)/10], "Color","blue","LineWidth",1.5);
text(o(1),o(2),o(3), "$K_0$", "Interpreter","latex", "FontSize",16);


% első keret
o_1= double(subs(T_01,q_1,q1))*o;
e_x1=double(subs(T_01,q_1,q1))*e_x;
e_y1=double(subs(T_01,q_1,q1))*e_y;
e_z1=double(subs(T_01,q_1,q1))*e_z;

plot3([o_1(1),(e_x1(1)-o_1(1))/10+o_1(1)],[o_1(2),(e_x1(2)-o_1(2))/10+o_1(2)],[o_1(3),(e_x1(3)-o_1(3))/10+o_1(3)], "Color","red","LineWidth",1.5);
plot3([o_1(1),(e_y1(1)-o_1(1))/10+o_1(1)],[o_1(2),(e_y1(2)-o_1(2))/10+o_1(2)],[o_1(3),(e_y1(3)-o_1(3))/10+o_1(3)], "Color","green","LineWidth",1.5);
plot3([o_1(1),(e_z1(1)-o_1(1))/10+o_1(1)],[o_1(2),(e_z1(2)-o_1(2))/10+o_1(2)],[o_1(3),(e_z1(3)-o_1(3))/10+o_1(3)], "Color","blue","LineWidth",1.5);
text(o_1(1),o_1(2),o_1(3), "$K_1$", "Interpreter","latex", "FontSize",16);

% második keret
o_2= double(subs(T_02,[q_1, q_2],[q1,q2]))*o;
e_x2=double(subs(T_02,[q_1, q_2],[q1,q2]))*e_x;
e_y2=double(subs(T_02,[q_1, q_2],[q1,q2]))*e_y;
e_z2=double(subs(T_02,[q_1, q_2],[q1,q2]))*e_z;

plot3([o_2(1),(e_x2(1)-o_2(1))/10+o_2(1)],[o_2(2),(e_x2(2)-o_2(2))/10+o_2(2)],[o_2(3),(e_x2(3)-o_2(3))/10+o_2(3)], "Color","red","LineWidth",1.5);
plot3([o_2(1),(e_y2(1)-o_2(1))/10+o_2(1)],[o_2(2),(e_y2(2)-o_2(2))/10+o_2(2)],[o_2(3),(e_y2(3)-o_2(3))/10+o_2(3)], "Color","green","LineWidth",1.5);
plot3([o_2(1),(e_z2(1)-o_2(1))/10+o_2(1)],[o_2(2),(e_z2(2)-o_2(2))/10+o_2(2)],[o_2(3),(e_z2(3)-o_2(3))/10+o_2(3)], "Color","blue","LineWidth",1.5);
text(o_2(1),o_2(2),o_2(3), "$K_2$", "Interpreter","latex", "FontSize",16);

% harmadik keret
o_3= double(subs(T_03,[q_1, q_2, q_3],[q1,q2,q3]))*o;
e_x3=double(subs(T_03,[q_1, q_2, q_3],[q1,q2,q3]))*e_x;
e_y3=double(subs(T_03,[q_1, q_2, q_3],[q1,q2,q3]))*e_y;
e_z3=double(subs(T_03,[q_1, q_2, q_3],[q1,q2,q3]))*e_z;

plot3([o_3(1),(e_x3(1)-o_3(1))/10+o_3(1)],[o_3(2),(e_x3(2)-o_2(2))/10+o_3(2)],[o_3(3),(e_x3(3)-o_3(3))/10+o_3(3)], "Color","red","LineWidth",1.5);
plot3([o_3(1),(e_y3(1)-o_3(1))/10+o_3(1)],[o_3(2),(e_y3(2)-o_2(2))/10+o_3(2)],[o_3(3),(e_y3(3)-o_3(3))/10+o_3(3)], "Color","green","LineWidth",1.5);
plot3([o_3(1),(e_z3(1)-o_3(1))/10+o_3(1)],[o_3(2),(e_z3(2)-o_2(2))/10+o_3(2)],[o_3(3),(e_z3(3)-o_3(3))/10+o_3(3)], "Color","blue","LineWidth",1.5);
text(o_3(1),o_3(2),o_3(3), "$K_3$", "Interpreter","latex", "FontSize",16);


% nagyedik keret
o_4= double(subs(T_04,[q_1, q_2, q_3, q_4],[q1,q2,q3,q4]))*o;
e_x4=double(subs(T_04,[q_1, q_2, q_3, q_4],[q1,q2,q3,q4]))*e_x;
e_y4=double(subs(T_04,[q_1, q_2, q_3, q_4],[q1,q2,q3,q4]))*e_y;
e_z4=double(subs(T_04,[q_1, q_2, q_3, q_4],[q1,q2,q3,q4]))*e_z;


plot3([o_4(1),(e_x4(1)-o_4(1))/10+o_4(1)],[o_4(2),(e_x4(2)-o_4(2))/10+o_4(2)],[o_4(3),(e_x4(3)-o_4(3))/10+o_4(3)], "Color","red", "LineWidth",1.5);
plot3([o_4(1),(e_y4(1)-o_4(1))/10+o_4(1)],[o_4(2),(e_y4(2)-o_4(2))/10+o_4(2)],[o_4(3),(e_y4(3)-o_4(3))/10+o_4(3)], "Color","green","LineWidth",1.5);
plot3([o_4(1),(e_z4(1)-o_4(1))/10+o_4(1)],[o_4(2),(e_z4(2)-o_4(2))/10+o_4(2)],[o_4(3),(e_z4(3)-o_4(3))/10+o_4(3)], "Color","blue","LineWidth",1.5);
text(o_4(1),o_4(2),o_4(3), "$K_4$", "Interpreter","latex", "FontSize",16);


xlabel("$x$ (m)", "Interpreter","latex");
ylabel("$y$ (m)", "Interpreter","latex");
zlabel("$z$ (m)", "Interpreter","latex");
axis equal
grid on
set(gca,'FontSize', 14)
set(gca,'TickLabelInterpreter','latex');
legend("$x$", "$y$", "$z$", "interpreter", "latex");

