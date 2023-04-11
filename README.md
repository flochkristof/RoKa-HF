# Robotkarok és mobilis robotok házi feladat
A repository-ban a következő fájlok és mappák találhatók:
-  `params.m`: A házi feladat paramétereit és a DH konfigurációt tartalmazza. Ezt a fájlt minden script beolvassa a futtatás első lépéseként.
- `T.m`: Függvény a transzformációs mátrix DH konvenció szerinti implementációjával.
- `get_joint_T.m`: Függvény, amely visszaadja az i-edik keret és a bázis közti transzformációs mátrixot.
- `create_grid.m`: Függvény, amely egy N dimenziós grid-et hoz létraa megadott intervallumokon és felbontással.
- `display_workspace.m`: Script, amely megjeleníti a robot munkaterét 3D-ben.
- `display_coordinates.m`: Megjeleníti a csuklókhoz rendelt keretek koordináta rendszereit, a megadott konfiguráció mellett.
- `validate_robot.m`: Validálja a Simulink-Simscape modellt, a DH transzformációs mátrixok alapján.
- `robot_movement.m`: Script, amely irnyányítja a robot mozgatását két tetszőleges konfiguráció között.
- `robot_setpoint_test.slx`: Simulink-Simscape modell, amely az adott csuklókonfiguráció szerint állítja be a szimulált robotkart.
- `robot_move.slx`: Simulink-Simscape modell, amely két konfiguráció közötti mozgást szimulál.
- `media/`: Mappa, amely a házi feladathoz tartozó ábrákat, képeket és videókat tartalmazza.

