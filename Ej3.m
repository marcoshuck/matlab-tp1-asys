%{ 
Análisis de Señales y Sistemas - TP Laboratorio Nº 1
Ejercicio 3 - Grupo 6

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp1-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

% Borramos todas las variables del workspace
clear all;
% Borramos los outputs e inputs de la ventana de comandos
clc;

% << INICIO DEL EJERCICIO 3.2.a >>
disp('Ejercicio 3 - Grupo 6 - 3.2.a');

% Definimos las funciones imaginarias
syms z w;

% Definimos la función a la que nos queremos aproximar con McLaurin
w = z/((z+1)*(z+2));

fprintf('w = %s\n', w);

 %   taylor(funcion, variable, orden, 'ExpansionPoint', punto);
fz = taylor(w, z, 6, 'ExpansionPoint', 0);

fprintf('Aplicando McLaurin de orden 6\n f(z) = %s\n', simplify(fz));

% Estado de hold graph desactivado
hold off;

% Graficamos la función original
ezplot(w, [-3, 3]);

% Estado de hold graph activado
hold on;

% Graficamos la función obtenida con McLaurin
ezplot(fz, [-3, 3]);

% << FIN DEL EJERCICIO 3.2.a >>



% Borramos todas las variables del workspace
clear all;

% Realizamos un salto de línea por cuestión estética
fprintf('\n');



% << INICIO DEL EJERCICIO 3.2.b >>
disp('Ejercicio 2 - Grupo 6 - 3.2.b');

syms z w;

w = 1/(z^2);

 %   taylor(funcion, variable, orden, 'ExpansionPoint', punto);
fz = taylor(w, z, 6, 'ExpansionPoint', 1+j);

disp(simplify(fz));
disp(w);

hold off;
ezplot(w);
hold on;
ezplot(fz);

% << FIN DEL EJERCICIO 3.2.b >>


% Borramos todas las variables del workspace
clear all;

% Realizamos un salto de línea por cuestión estética
fprintf('\n');


% << INICIO DEL EJERCICIO 3.3 >>
% << FIN DEL EJERCICIO 3.3 >>


