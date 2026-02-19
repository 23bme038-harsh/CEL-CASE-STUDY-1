clc;
clear;

% Given Data
m1 = 2;
m2 = 1;
k1 = 2000;
k2 = 1000;

% Mass Matrix
M = [m1 0;
     0  m2];

% Stiffness Matrix
K = [k1+k2  -k2;
     -k2     k2];

% Eigenvalue solution
[vec, val] = eig(K,M);

omega = sqrt(diag(val));
f = omega/(2*pi);

disp('Natural Frequencies (rad/s):')
disp(omega)

disp('Natural Frequencies (Hz):')
disp(f)

% Plot mode shapes
figure
plot(vec)
title('Mode Shapes')
xlabel('Mass Number')
ylabel('Amplitude')
grid on
