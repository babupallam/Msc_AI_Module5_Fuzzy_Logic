x = (0:0.2:10)';
y1 = trimf(x, [3 4 5]);
y2 = trimf(x, [2 4 7]);
y3 = trimf(x, [1 4 9]);
subplot(211), plot(x, [y1 y2 y3]);
% y1 = trimf(x, [2 3 5]);
% y2 = trimf(x, [3 4 7]);
% y3 = trimf(x, [4 5 9]);
% subplot(212), plot(x, [y1 y2 y3]);
set(gcf, 'name', 'trimf', 'numbertitle', 'off');


%% 

    x = (0:0.1:10)';
        y1 = trapmf(x, [2 3 7 9]);
        y2 = trapmf(x, [3 4 6 8]);
        y3 = trapmf(x, [4 5 5 7]);
        y4 = trapmf(x, [5 6 4 6]);
        plot(x, [y1 y2 y3 y4]);
        set(gcf, 'name', 'trapmf', 'numbertitle', 'off');
 %% 
 
