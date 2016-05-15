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

% << INICIO DEL EJERCICIO 4.2 >>
disp('Ejercicio 4 - Grupo 6 - 4.2');

% Definimos la variable real
syms x 'real';

% Definimos el primer polinomio
Px = (23*x^2)/(x^4 + 45*x^2 + 755);

fprintf('P(x) = %s\n', Px);

% Separamos el numerador y el denominador del polinomio
[nP, dP] = numden(Px);

fprintf('Numerador: %s\nDenominador: %s\n', nP, dP);

% Obtenemos un vector de coeficientes del numerador y el denominador
aP = sym2poly(nP);
bP = sym2poly(dP);

% Calculamos los residuos
[rP, pP, kP] = residue(aP, bP);

% Mostramos los polos calculados
disp('Polos de P(x):');
disp(pP);

% Mostramos los residuos calculados
disp('Residuos de P(x):');
disp(rP);

% Definimos el segundo polinomio
Qx = (5*x^2 + 12*x)/((45*x^2-x+132)*(45*x^2+x+132));

fprintf('Q(x) = %s\n', Px);

% Separamos el numerador y el denominador del polinomio
[nQ, dQ] = numden(Qx);

fprintf('Numerador: %s\nDenominador: %s\n', nQ, dQ);

% Obtenemos un vector de coeficientes del numerador y el denominador
aQ = sym2poly(nQ);
bQ = sym2poly(dQ);

% Calculamos los residuos
[rQ, pQ, kQ] = residue(aQ, bQ);

% Mostramos los polos calculados
disp('Polos de Q(x):');
disp(pQ);

% Mostramos los residuos calculados
disp('Residuos de Q(x):');
disp(rQ);

% << FIN DEL EJERCICIO 4.2 >>


% Realizamos un salto de línea por cuestión estética
fprintf('\n');


% << INICIO DEL EJERCICIO 4.3 >>
disp('Ejercicio 4 - Grupo 6 - 4.3');

% Buscamos los residuos que estan por encima del eje de abcisas
% En caso de que haya residuos por debajo del eje, lo seteamos en 0
for n = 1:size(rP)
    if(imag(rP(n)) < 0)
        rP(n) = 0;
    end
end

% Realizamos la integral con aplicando el teorema del residuo
% Mostramos el mensaje por pantalla
IntP = 2 * pi * j * sum(rP);
fprintf('Integral de P(x): %s\n', IntP);

% Buscamos los residuos que estan por encima del eje de abcisas
% En caso de que haya residuos por debajo del eje, lo seteamos en 0
for n = 1:size(rQ)
    if(imag(rQ(n)) < 0)
        rQ(n) = 0;
    end
end

% Realizamos la integral con aplicando el teorema del residuo
IntQ = 2 * pi * j * sum(rQ);
fprintf('Integral de Q(x): %s\n', IntQ);
% << FIN DEL EJERCICIO 4.3 >>


% Realizamos un salto de línea por cuestión estética
fprintf('\n');

% Borramos la variable x del workspace
clear x;


% << INICIO DEL EJERCICIO 4.4 >>
disp('Ejercicio 4 - Grupo 6 - 4.4');

% Realizamos la integral de la manera tradicional
IntPo = eval(int(Px, -Inf, Inf));

% Mostramos por pantalla para comparar valores
fprintf('Integral de P(x): %s\n', IntPo);
fprintf('Integral de P(x) por residuos: %s\n', IntP);

% Realizamos la integral de la manera tradicional
IntQo = eval(int(Qx, -Inf, Inf));

% Mostramos por pantalla para comparar valores
fprintf('Integral de Q(x): %s\n', IntQo);
fprintf('Integral de Q(x) por residuos: %s\n', IntQ);

% << FIN DEL EJERCICIO 4.4 >>


% Borramos todas las variables del workspace
%clear all;

% Realizamos un salto de línea por cuestión estética
%fprintf('\n');


% << INICIO DEL EJERCICIO 4.5 >>





% << FIN DEL EJERCICIO 4.5 >>