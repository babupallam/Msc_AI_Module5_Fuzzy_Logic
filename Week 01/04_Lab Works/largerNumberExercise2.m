x = 0:0.1:10000;
% Evaluate membership function for the input values.

y = smf(x,[0 5000]);
% Plot the membership function.

plot(x,y)
title('smf, P = [0 5000]')
xlabel('x')
ylabel('Degree of Membership')
ylim([0 1.05])


%% 

% Define parameters
a = 1e20; % Transition point
k = 1e-20; % Steepness parameter

% Define the input range
x = linspace(0, 2*a, 1000); % Adjust the range as needed

% Calculate the membership values using the sigmoidal function
mu = 1 ./ (1 + exp(-k*(x - a)));

% Plot the membership function
plot(x, mu);
xlabel('Input');
ylabel('Membership');
title('Sigmoidal Fuzzy Membership Function for Large Numbers');
%% 

% Define parameters
a = 1e20; % Left boundary of the triangle
b = 2e20; % Peak of the triangle
c = 3e20; % Right boundary of the triangle

% Define the input range
x = linspace(0, 4e20, 1000); % Adjust the range as needed

% Calculate the membership values using the triangular function
mu = zeros(size(x));
mu(x >= a & x < b) = (x(x >= a & x < b) - a) / (b - a);
mu(x >= b & x <= c) = (c - x(x >= b & x <= c)) / (c - b);

% Plot the membership function
plot(x, mu);
xlabel('Input');
ylabel('Membership');
title('Triangular Fuzzy Membership Function for Large Numbers');
%% 


