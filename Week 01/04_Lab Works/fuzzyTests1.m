% Triangle-Shaped Membership Function
x = 0:0.1:10; %1x101
y = trimf(x,[3 6 8]);%1x101 
% y — Membership value = trimf(input vector, Membership function parameters)
plot(x,y)
title('trimf, P = [3 6 8]')
xlabel('x')
ylabel('Degree of Membership')
ylim([-0.05 1.05])

%% Trapezoid-Shaped Membership Function
x = 0:0.1:10;
y = trapmf(x,[1 5 7 8]);
plot(x,y)
title('trapmf, P = [1 5 7 8]')
xlabel('x')
ylabel('Degree of Membership')
ylim([-0.05 1.05]);
%% Gaussian distributions - Gaussian Combination Membership Functions
x = 0:0.1:10;
y1 = gauss2mf(x,[2 4 1 8]);
y2 = gauss2mf(x,[2 5 1 7]);
y3 = gauss2mf(x,[2 6 1 6]);

plot(x,y1,x,y2,x,y3)
xlabel('x')
ylabel('Degree of Membership')
ylim([-0.05 1.05])
legend('P = [2 4 1 8]','P = [2 5 1 7]','P = [2 6 1 6]',...
    'Location','northwest')

%% Gaussian distributions - Gaussian Combination Membership Functions
x = 0:0.1:10;
% Evaluate several membership functions for the input values.

y1 = gauss2mf(x,[2 4 1 8]);
y2 = gauss2mf(x,[2 5 1 7]);
y3 = gauss2mf(x,[2 6 1 6]);
% Plot the membership function.

plot(x,y1,x,y2,x,y3)
xlabel('x')
ylabel('Degree of Membership')
ylim([-0.05 1.05])
legend('P = [2 4 1 8]','P = [2 5 1 7]','P = [2 6 1 6]',...
    'Location','northwest')

%% Generalized bell-shaped membership function
x = 0:0.1:10;
% Evaluate membership function for the input values.

y = gbellmf(x,[2 4 6]);
% Plot the membership function.

plot(x,y)
title('gbellmf, P=[2 4 6]')
xlabel('x')
ylabel('Degree of Membership')
ylim([-0.05 1.05])
%% 
