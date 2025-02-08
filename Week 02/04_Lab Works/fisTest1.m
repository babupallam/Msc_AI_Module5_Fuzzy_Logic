% To remove the warning messages for using old syntax
warning('off','fuzzy:general:warnDeprecation_Newfis') 
warning('off','fuzzy:general:warnDeprecation_Addvar')
warning('off','fuzzy:general:warnDeprecation_Addmf')
warning('off','fuzzy:general:warnDeprecation_Evalfis')

% Clears the Command Window of clutter
clc


% This m-file creates type-1 Mamdani fuzzy inference system (FIS)
fis = mamfis('Name',"playerSkill");% name of the FIS is "bank"

% Player Accuracy (%) 0-100
fis = addInput(fis,[0 100],'Name',"Accuracy");
% Add three membership functions associated with this variable.
fis = addMF(fis,"Accuracy","trapmf",[0 0 15 25],'Name',"Poor");
fis = addMF(fis,"Accuracy","trimf",[20 50 80],'Name',"Average");
fis = addMF(fis,"Accuracy","trapmf",[70 90 100 100],'Name',"Good");

% Damage Output (%) 0-100
fis = addInput(fis,[0 100],'Name',"Damage");
% Add three membership functions associated with this variable.
fis = addMF(fis,"Damage","trapmf",[0 0 10 20],'Name',"Very Little");
fis = addMF(fis,"Damage","trimf",[15 25 35],'Name',"Little");
fis = addMF(fis,"Damage","trimf",[30 50 70],'Name',"Medium");
fis = addMF(fis,"Damage","trimf",[65 75 85],'Name',"High");
fis = addMF(fis,"Damage","trapmf",[80 90 100 100],'Name',"Very High");


% Damage Output (%) 0-100
fis = addOutput(fis,[0 100],'Name',"PlayerSkill");
% Add three membership functions associated with this variable.
fis = addMF(fis,"PlayerSkill","trapmf",[0 0 10 25],'Name',"Low Skill");
fis = addMF(fis,"PlayerSkill","trapmf",[20 40 50 70],'Name',"Average Skill");
fis = addMF(fis,"PlayerSkill","trapmf",[65 75 100 100],'Name',"High Skill");

rule1 = [1 1 1 1 1];
rule2 = [3 5 3 1 1];
rule3 = [2 3 2 1 1];
rule4 = [1 3 1 1 1];
rule5 = [1 3 2 0.5 1];

ruleList = [rule1; rule2; rule3; rule4; rule5];

fis = addrule(fis, ruleList)

showrule(fis)

Input1 = 10

Input2 = 50

Output = evalfis(fis, [Input1, Input2])

ruleview(fis);

% The subplots to visualise the system
subplot(3,1,1),plotmf(fis, 'input', 1);
subplot(3,1,2),plotmf(fis, 'input', 2);
subplot(3,1,3),plotmf(fis, 'output', 1);



