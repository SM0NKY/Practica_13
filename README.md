# Métodos Numéricos para Sistemas de Ecuaciones Lineales

Este repositorio contiene implementaciones de diferentes métodos numéricos para resolver sistemas de ecuaciones lineales en MATLAB.

## Archivos Incluidos

- `Gauss_S.m`: Implementación del método de Gauss-Seidel
- `Gauss_S2.m`: Implementación del método de Jacobi
- `Gauss_S3.m`: Implementación usando el método de rref (forma escalonada reducida)

## Sistema de Ecuaciones

Los métodos resuelven el siguiente sistema de ecuaciones lineales:

```
5.2x + 3.1y - 1.6z = 1.64
1.7x + 2.4y + 0.3z = 20.42
-6.3x - 3.7y - 12.6z = 0.27
```

## Requisitos

- MATLAB (versión R2018b o superior)

## Uso

1. Abra MATLAB
2. Navegue al directorio del proyecto
3. Ejecute cualquiera de los archivos .m para ver la solución usando diferentes métodos

## Métodos Implementados

### Método de Gauss-Seidel
- Implementación iterativa
- Requiere matriz diagonal dominante
- Converge más rápido que Jacobi

### Método de Jacobi
- Implementación iterativa
- Requiere matriz diagonal dominante
- Más fácil de paralelizar

### Método rref
- Solución exacta
- No requiere iteraciones
- Usa la forma escalonada reducida de la matriz

## Citar este trabajo

Si utiliza este código en su investigación, por favor cite este repositorio como:

```
SM0NKY_, S. (2024). Métodos Numéricos para Sistemas de Ecuaciones Lineales [Software]. 
GitHub. https://github.com/SM0NKY/Practica_13
```

Para más detalles de citación, consulte el archivo `CITATION.cff` en este repositorio. 