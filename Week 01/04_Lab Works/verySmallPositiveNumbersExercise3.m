%%  TESTED

% Define parameters
a = 0; % Start of the triangle
b = 1e-10; % Peak of the triangle
c = 1e-9; % End of the triangle

% Define the input range
x = linspace(0, 2*c, 1000); % Adjust the range as needed

% Calculate the membership values using the triangular function
mu = max(0, min((x - a) / (b - a), (c - x) / (c - b)));

% Plot the membership function
plot(x, mu);
xlabel('Input');
ylabel('Membership');
title('Triangular Fuzzy Membership Function for Very Small Positive Numbers');

