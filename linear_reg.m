clear all; close all; clc; 

% Define initial model
a = input('Masukkan nilai a : ');
b = input('Masukkan nilai b : ');

G = [];z = [];T = [];
for i = 1:10
    % locations, free variable
    z(i) = i;
    % synthetic data
    T = [T;a+b*z(i)];
    % Kernel matrix
    G = [G;1 z(i)];
end

% Plot of synthetic data
figure;
plot (z,T,'--rs','LineWidth',1,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','r',...
                'MarkerSize',5);
            
ylabel ('T (C)'); xlabel ('Z (m)'); 
title ('Forward modeling T=a+bz'); 
grid on;
leg = legend('Synthetic Data');
set(leg,'Location','Best');
