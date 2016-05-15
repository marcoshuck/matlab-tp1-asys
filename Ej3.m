% Análisis de Señales y Sistemas - TP Laboratorio Nº 1
% Ejercicio 3 - Grupo 6
% Realizado por Huck Marcos A. y Castelluci Leandro E.
% Repositorio disponible en: https://github.com/marcoshuck/matlab-tp1-asys

% Borramos todas las variables del workspace
clear all;
% Borramos los outputs e inputs de la ventana de comandos
clc;

% INICIO DEL EJERCICIO 3.2.a
syms z w;

disp('Ejercicio 3 - Grupo 6 - 3.2.a');

w = z/((z+1)*(z+2));

 %   taylor(funcion, variable, orden, 'ExpansionPoint', punto);
fz = taylor(w, z, 6, 'ExpansionPoint', 0);

disp(simplify(fz));
disp(w);

%hold off;
%ezplot(w, [-3, 3]);
%hold on;
%ezplot(fz, [-3, 3]);

% FIN DEL EJERCICIO 3.2.a
clear all;
% INICIO DEL EJERCICIO 3.2.b
syms z w;

disp('Ejercicio 2 - Grupo 6 - 3.2.b');

w = 1/(z^2);

 %   taylor(funcion, variable, orden, 'ExpansionPoint', punto);
fz = taylor(w, z, 6, 'ExpansionPoint', 1+j);

disp(simplify(fz));
disp(w);

hold off;
ezplot(w);
hold on;
ezplot(fz);

% FIN DEL EJERCICIO 3.2.b


