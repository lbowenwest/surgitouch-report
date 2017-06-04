% Logarithmic Force Contours

x = -50:0.5:50;
y = -50:0.5:50;
f = 2.5:2.5:50;
[X,Y] = meshgrid(x,y);

Z = (0.11)*1.1.^(sqrt(X.^2+Y.^2)/2.5);
v = (0.11)*1.1.^(f./2.5);

figure
% surf(X,Y,Z,'linestyle','none')
contour(X, y, Z);
title('Forces applied based on joysticks angle in X & Y')
xlabel('Angle of X shaft (Deg)');
ylabel('Angle of Y shaft (Deg)');

% view(0, -90);
c = colorbar;
ylabel(c,'Force (N)');
