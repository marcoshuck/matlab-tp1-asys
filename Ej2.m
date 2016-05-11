% Ejercicio 2 - Grupo 6

clear all;
clc;
clf;

% INICIO DEL EJERCICIO 2.2
%Definimos las funciones imaginarias
syms z;
syms w;

%Definimos las componentes de las funciones
syms x y 'real';
syms u v 'real';

y = 2*x+4;
x = solve(y, x);

z = x + j*y;
disp(z);

% FIN DEL EJERCICIO 2.2