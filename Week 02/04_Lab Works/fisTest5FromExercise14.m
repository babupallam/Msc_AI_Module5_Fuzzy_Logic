%% EXERCISE 14
% To remove the warning messages for using old syntax
warning('off','fuzzy:general:warnDeprecation_Newfis') 
warning('off','fuzzy:general:warnDeprecation_Addvar')
warning('off','fuzzy:general:warnDeprecation_Addmf')
warning('off','fuzzy:general:warnDeprecation_Evalfis')

% This m-file creates type-1 Mamdani fuzzy inference system (FIS)
fis = mamfis('Name',"BIG and Mediam");% name of the FIS is "bank"

fis = addInput(fis,[0 100],'Name',"Distance");
% Add three membership functions associated with this variable.
fis = addMF(fis,"Distance","trimf",[50,75,100],'Name',"Big");

%---
fis= addInput(fis,[0,10],'Name',"Acceleration");
fis = addMF(fis,"Acceleration","trimf",[2,5,8],'Name',"Mediam");



% The rule declarations
rule1 = [1 1 1 1];

% A matrix to hold the rule arrays
ruleList = [rule1];

%display the existing rules
showrule(fis)

% %add rules to the list
% fis = addRule(fis,ruleList);
% 
% showrule(fis, "Format", "symbolic")
% showrule(fis, "Format", "indexed")
% 
% % The ruleview allows you to see the rule-base
% ruleview(fis)
% 
% % The subplots to visualise the system
% figure(1)
subplot(4,1,1), plotmf(fis, 'input', 1)
subplot(4,1,2), plotmf(fis, 'input', 2)