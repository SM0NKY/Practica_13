% Solución de sistema de ecuaciones lineales usando rref
% Sistema a resolver:
% 5.2x + 3.1y - 1.6z = 1.64
% 1.7x + 2.4y + 0.3z = 20.42
% -6.3x - 3.7y - 12.6z = 0.27

clear;
clc;

% Mostrar información
disp("        Solución usando rref        ");
disp("Este método encuentra la solución exacta del sistema");

% Definir la matriz aumentada [A|b]
A = [5.2 3.1 -1.6; 1.7 2.4 0.3; -6.3 -3.7 -12.6];
b = [1.64; 20.42; 0.27];
matriz_aumentada = [A b];

% Mostrar la matriz aumentada original
disp('Matriz aumentada original:');
disp(matriz_aumentada);

% Obtener la forma escalonada reducida
matriz_rref = rref(matriz_aumentada);

% Mostrar la matriz en forma escalonada reducida
disp('Matriz en forma escalonada reducida:');
disp(matriz_rref);

% Extraer la solución
x = matriz_rref(1,4);
y = matriz_rref(2,4);
z = matriz_rref(3,4);

% Mostrar la solución
fprintf('\nSolución del sistema:\n');
fprintf('x = %.6f\n', x);
fprintf('y = %.6f\n', y);
fprintf('z = %.6f\n', z);

% Verificar la solución
disp('Verificación de la solución:');
verificacion = A * [x; y; z];
fprintf('5.2x + 3.1y - 1.6z = %.6f (debería ser 1.64)\n', verificacion(1));
fprintf('1.7x + 2.4y + 0.3z = %.6f (debería ser 20.42)\n', verificacion(2));
fprintf('-6.3x - 3.7y - 12.6z = %.6f (debería ser 0.27)\n', verificacion(3));