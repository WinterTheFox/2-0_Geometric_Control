%Plots de referencia, trayectoria y simulación final.
close all;
clear all;
clc;
sim('ControlGeo')

figure (1)
plot(xd,yd,'b',x,y,'--k')
xlabel('x [m]');
ylabel('y [m]');
title('Seguimiento de trayectoria')
legend('Posición deseada','Posición')

figure (2)
plot(tiempo,v,tiempo,w)
xlabel('t [s]');
ylabel('Control: v [m/s], w [rad/s]');
title('Señales de control')
legend('v','w')

figure (3)
plot(tiempo,xd-x,tiempo,yd-y,tiempo,thetad-theta)
xlabel('t [s]');
ylabel('Error: e_{x,y} [m], e_{theta} [rad]');
title('Errores')
legend('e_{x}','e_{y}','e_{theta}')

figure (4)
plot(tiempo,xp,tiempo,yp)
xlabel('t [s]');
ylabel('Velocidad: xp,yp [m/s]');
title('Velocidad')
legend('xp','yp')
