S = 0:.5:10;
tip = 0.15*ones(size(S));
plot(S,tip)
xlabel('Service')
ylabel('Tip')
ylim([0.05 0.25])