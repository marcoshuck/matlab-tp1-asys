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

% << INICIO DEL EJERCICIO 1.1 >>
disp('Ejercicio 1 - Grupo 6 - 1.1');

% Definimos las variables iniciales:
a = 23.5+10j; b = 33-50j; c = -39.05-79j;

% Operamos según lo solicitado:
% a)
fprintf('a) a - b + c es igual a: %s\n', num2str(a-b+c));
%compass([a b c a-b+c)]);
% b)
d = b - a + c;
fprintf('b) d = b - a + c es igual a: d = %s\n', num2str(d));
%compass([a b c d]);
% c)
fprintf('c) 1/100 * d * a + c es igual a: %s\n', num2str((1/100 * d * a) + c));
%compass([a c d ((1/100 * d * a)+c)]);
% d)
fprintf('d) b^(b+a) es igual a: %s\n', num2str(b^(b+a)));
compass([a b b^(b+a)]);
% e)
fprintf('e) b^(a/12) es igual a: %s\n', num2str(b^(a/12)));
%compass([a b b^(a/12)]);

% << FIN DEL EJERCICIO 1.1 >>


% Realizamos un salto de línea por cuestión estética
fprintf('\n');


% << INICIO DEL EJERCICIO 1.2 >>
disp('Ejercicio 1 - Grupo 6 - 1.2');

% Número a:
fprintf('Del número a = %s, encontrar:\n', num2str(a));
fprintf('\ta) Parte real: %s\n', num2str(real(a)));
fprintf('\tb) Parte imaginaria: %s\n', num2str(imag(a)));
fprintf('\tc) Argumento: %s\n', num2str(angle(a)));
fprintf('\td) Conjugado: %s\n', num2str(conj(a)));
fprintf('\te) Magnitud: %s\n', num2str(abs(a)));

% Número b:
fprintf('Del número b = %s, encontrar:\n', num2str(b));
fprintf('\ta) Parte real: %s\n', num2str(real(b)));
fprintf('\tb) Parte imaginaria: %s\n', num2str(imag(b)));
fprintf('\tc) Argumento: %s\n', num2str(angle(b)));
fprintf('\td) Conjugado: %s\n', num2str(conj(b)));
fprintf('\te) Magnitud: %s\n', num2str(abs(b)));

% Número c:
fprintf('Del número c = %s, encontrar:\n', num2str(c));
fprintf('\ta) Parte real: %s\n', num2str(real(c)));
fprintf('\tb) Parte imaginaria: %s\n', num2str(imag(c)));
fprintf('\tc) Argumento: %s\n', num2str(angle(c)));
fprintf('\td) Conjugado: %s\n', num2str(conj(c)));
fprintf('\te) Magnitud: %s\n', num2str(abs(c)));

% << FIN DEL EJERCICIO 1.2 >>


% << INICIO DEL EJERCICIO 1.3 >>
%disp('Ejercicio 1 - Grupo 6 - 1.3');

compass([a-b+c d ((1/100 * d * a)+c)]);

% << FIN DEL EJERCICIO 1.3 >>