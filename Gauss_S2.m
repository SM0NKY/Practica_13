% Método de Jacobi para resolver sistemas de ecuaciones lineales
% Sistema a resolver:
% 5.2x + 3.1y - 1.6z = 1.64
% 1.7x + 2.4y + 0.3z = 20.42
% -6.3x - 3.7y - 12.6z = 0.27

clear;
clc;

% Mostrar información del método
disp("        Método de Jacobi        ");
disp("Recuerda que la matriz debe ser diagonal dominante");

% Definir la matriz de coeficientes y el vector de términos independientes
A = [5.2 3.1 -1.6; 1.7 2.4 0.3; -6.3 -3.7 -12.6];
b = [1.64; 20.42; 0.27];

% Solicitar número de iteraciones
n = input('Ingrese el número de iteraciones que desea: ');

% Inicializar variables
x = zeros(3, 1);  % Vector solución inicial
x_anterior = zeros(3, 1);  % Vector para almacenar la solución anterior
error = zeros(3, 1);  % Vector para almacenar los errores

% Imprimir encabezado
fprintf("\nIter\t x\t\t y\t\t z\t\t Error x\t Error y\t Error z\n");
fprintf("----------------------------------------------------------------\n");

% Iteraciones del método de Jacobi
for k = 1:n
    % Guardar valores anteriores
x_anterior = x;
    
    % Calcular nuevos valores (método de Jacobi)
    x(1) = (b(1) - A(1,2)*x_anterior(2) - A(1,3)*x_anterior(3)) / A(1,1);
    x(2) = (b(2) - A(2,1)*x_anterior(1) - A(2,3)*x_anterior(3)) / A(2,2);
    x(3) = (b(3) - A(3,1)*x_anterior(1) - A(3,2)*x_anterior(2)) / A(3,3);
    
    % Calcular errores relativos
    error = abs((x - x_anterior) ./ x) * 100;
    
    % Imprimir resultados
    if k == 1
        fprintf("%d\t %.6f\t %.6f\t %.6f\n", k, x(1), x(2), x(3));
    else
        fprintf("%d\t %.6f\t %.6f\t %.6f\t %.2f%%\t %.2f%%\t %.2f%%\n", ...
                k, x(1), x(2), x(3), error(1), error(2), error(3));
    end
end

% Mostrar solución final
fprintf("\nSolución final:\n");
fprintf("x = %.6f\n", x(1));
fprintf("y = %.6f\n", x(2));
fprintf("z = %.6f\n", x(3));
