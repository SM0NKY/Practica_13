clear;
clc;
disp("        Método de Gaus Seidel        ")
disp("Recuerda que la matriz establecida debe ser diagonal dominante");
a=[5.2 3.1 -1.6;1.7 2.4 0.3; -6.3 -3.7 -12.6];
b=[1.64; 20.42;0.27];
n=input('Ingrese el número de iteraciones que quiere= ');
c=[a b];
eax=0;
eay=0;
eaz=0;
acumx=0;
acumy=0;
acumz=0;
fprintf("\t\t x\t\t y\t\t z\t\t eax\t eay\t eaz\t \n");
for i=1:n
    x=(c(1,4)-(c(1,3)*acumz)-(c(1,2)*acumy))/c(1,1);
    eax=abs((x-acumx)/x)*100;
    acumx=x;
    y=(c(2,4)-(c(2,1)*acumx)-(c(2,3)*acumz))/c(2,2);
    eay=abs((y-acumy)/y)*100;
    acumy=y;
    z=(c(3,4)-(c(3,1)*acumx)-(c(3,2)*acumy))/c(3,3);
    eaz=abs((z-acumz)/z)*100;
    acumz=z;
    if i==1
        fprintf("%d\t %.6f\t %.6f\t %.6f\t \n",i,acumx,acumy,acumz);
    else
        fprintf("%d\t %.6f\t %.6f\t %.6f\t %.1f\t %.1f\t %.1f\t \n",i,acumx,acumy,acumz,eax,eay,eaz);
    end
end
