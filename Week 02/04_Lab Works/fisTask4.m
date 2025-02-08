%% LAB 4
% To remove the warning messages for using old syntax
warning('off','fuzzy:general:warnDeprecation_Newfis') 
warning('off','fuzzy:general:warnDeprecation_Addvar')
warning('off','fuzzy:general:warnDeprecation_Addmf')
warning('off','fuzzy:general:warnDeprecation_Evalfis')

% This m-file creates type-1 Mamdani fuzzy inference system (FIS)
fis = mamfis('Name',"bank");% name of the FIS is "bank"

%The linguistic salary (lsalary) has three labels, low medium and high where 
% medium is best represented by a trapezoidal membership function and 
% low and high are  shoulders’;
% linguistic salary (Isalary) -- (0 to 100000)
fis = addInput(fis,[0 100000],'Name',"Isalary");
% Add three membership functions associated with this variable.
fis = addMF(fis,"Isalary","linzmf",[1, 30000],'Name',"low");
fis = addMF(fis,"Isalary","trapmf",[20000,40000,50000,80000],'Name',"medium");
fis = addMF(fis,"Isalary","linzmf",[70000,100000],'Name',"high");

plotmf(fis, "input",1)
%%
% The linguistic period of employment (lperiod) is covered by 
% five labels (very low, low, medium,high and very high). 
% These are represented by triangular membership functions;

%add variable linguistic period of employment (lperiod) to the FIS which is of type input
%lies in between 0 to 40 years
fis= addInput(fis,[0,40],'Name',"Iperiod");
% add five membership functions over the domain
fis = addMF(fis,"Iperiod","trimf",[0,0,10],'Name',"very low");
fis = addMF(fis,"Iperiod","trimf",[0,10,20],'Name',"low");
fis = addMF(fis,"Iperiod","trimf",[10,20,30],'Name',"mediam");
fis = addMF(fis,"Iperiod","trimf",[20,30,40],'Name',"high");
fis = addMF(fis,"Iperiod","trimf",[30,40,40],'Name',"very high");

plotmf(fis, "input",2)
%% 
% The decision takes three linguistic terms low, medium and high. Low and high are triangular
% whilst medium is trapezoidal. The decision range is 0 to 100.
%add linquistic variable named "decision" which lies in between 0 to 100
fis= addOutput(fis,[0,100],'Name',"decision");
% add three membership functions over the domain low, mediam, high
% low and high -- traingular
% mediam -- trapezoidal
fis = addMF(fis,"decision","trimf",[0,0,40],'Name',"low");
fis = addMF(fis,"decision","trapmf",[10,35,65,90],'Name',"mediam");
fis = addMF(fis,"decision","trimf",[60,100,100],'Name',"high");

plotmf(fis, "output",1)

ruleList = [3 5 3 1 1; 1 1 1 1 1];

fis = addRule(fis,ruleList);

showrule(fis)
showrule(fis, "Format", "symbolic")
showrule(fis, "Format", "indexed")

subplot(3,1,1), plotmf(fis, "input",1)
subplot(3,1,2), plotmf(fis, "input",2)
subplot(3,1,3), plotmf(fis, "output",1)