% Ejercicio 1 - Grupo 6

clear all;
clc;
clf;

% INICIO DEL EJERCICIO 1.1
% Definimos las variables iniciales:
a = 23.5+10j; b = 33-50j; c = -39.05-79j;
disp('Ejercicio 1 - Grupo 6 - 1.1');
% Operamos según lo solicitado:
% a)
fprintf('a) a - b + c es igual a: %s\n', num2str(a-b+c));
% b)
d = b - a + c;
fprintf('b) d = b - a + c es igual a: d = %s\n', num2str(d));
% c)
fprintf('c) 1/100 * d * a es igual a: %s\n', num2str((1/100 * d * a) + c));
% d)
fprintf('d) b^(b+a) es igual a: %s\n', num2str(b^(b+a)));
% e)
fprintf('e) b^(a/12) es igual a: %s\n', num2str(b^(a/12)));
% FIN DEL EJERCICIO 1.1
fprintf('\n');

% INICIO DEL EJERCICIO 1.2

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

% FIN DEL EJERCICIO 1.2