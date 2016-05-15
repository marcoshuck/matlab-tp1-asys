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

clf;

% << INICIO DEL EJERCICIO 2.2 >>
disp('Ejercicio 2 - Grupo 6 - 2.2');

% Definimos las funciones imaginarias
syms z w;
% Definimos las variables reales
syms u v 'real';

% Asignamos el valor de w.
w = u + j*v;

% Definimos el objeto geométrico
%x = -50:50;
%y = 2*x + 4;

disp('Objeto geométrico:');
fprintf('y = %s\n', '2*x+4');

% Graficamos el objeto geométrico.
%plot(y);

disp('Mapeo:');
fprintf('w = %s\n', '3*z + 6');

% Encontramos z para el mapeo dado en la consigna.
z = solve(w == 3*z + 6, z);


% Definimos la parte real y la imaginaria de z
x = real(z);
y = imag(z);

% Mostramos por pantalla lo que obtuvimos en el punto anterior
disp('Parte real e imaginaria:');
fprintf('x = %s\n', x);
fprintf('y = %s\n', y);

% Utilizamos una variable auxiliar para obtener el resultado de reemplazar
aux = solve(y == 2*x + 4, v);

% Mostramos por pantalla lo obtenido
disp('Imagen del objeto geométrico:');
fprintf('v = %s\n', aux);

% Graficamos la imagen del objeto
%ezplot(aux);

% << FIN DEL EJERCICIO 2.2 >>



% Borramos todas las variables del workspace
clear all;

% Realizamos un salto de línea por cuestión estética
fprintf('\n');



% << INICIO DEL EJERCICIO 2.3 >>
disp('Ejercicio 2 - Grupo 6 - 2.3');

% Definimos las funciones imaginarias
syms z w;
% Definimos las variables reales
syms u v 'real';
syms x y 'real';

% Estado de hold graph desactivado
hold off;

% Definimos el objeto geométrico
fz = x^2+y^2-9;
% Graficamos el objeto geométrico.
ezplot(fz);

% Estado de hold graph activado
hold on;

% Encontramos z para el mapeo dado en la consigna.
z = solve(w == (z-j)/(z+j), z);

% Definimos la parte real y la imaginaria de z
x = real(z);
y = imag(z);

fz = solve(fz);

% Graficamos la imagen del objeto geométrico.
ezplot(fz);

% << FIN DEL EJERCICIO 2.2 >>