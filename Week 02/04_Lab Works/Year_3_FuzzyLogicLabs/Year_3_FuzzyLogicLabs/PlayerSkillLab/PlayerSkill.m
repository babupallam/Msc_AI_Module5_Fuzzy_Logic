% To remove the warning messages for using old syntax
warning('off','fuzzy:general:warnDeprecation_Newfis') 
warning('off','fuzzy:general:warnDeprecation_Addvar')
warning('off','fuzzy:general:warnDeprecation_Addmf')
warning('off','fuzzy:general:warnDeprecation_Evalfis')

% Clears the Command Window of clutter
clc

% A declaration of new FIS
a = newfis('Player Skill');

% Declaring a new variable - this is an INPUT(1)
a=addvar(a,'input','Player Accuracy (%)',[0 100]);

% Populating the 1st input variable with membership functions
a=addmf(a,'input',1,'Poor','trapmf',[0 0 15 25]); 
a=addmf(a,'input',1,'Average','trimf',[20 50 80]); 
a=addmf(a,'input',1,'Good','trapmf',[70 90 100 100]);

% Declaring a new variable - this is another INPUT(2)
a=addvar(a,'input','Damage Output (%)',[0 100]); 

% Populating the 2nd input variable with membership functions
a=addmf(a,'input',2,'Very Little','trapmf',[0 0 10 20]); 
a=addmf(a,'input',2,'Little','trimf',[15 25 35]); 
a=addmf(a,'input',2,'Medium','trimf',[30 50 70]); 
a=addmf(a,'input',2,'High','trimf',[65 75 85]);
a=addmf(a,'input',2,'Very High','trapmf',[80 90 100 100]);

% Declaring a new variable - this is an OUTPUT(1)
a=addvar(a,'output','PlayerSkill',[0 100]);

% Populating the output variable with membership functions
a=addmf(a,'output',1,'Low Skill','trapmf',[0 0 10 25]);
a=addmf(a,'output',1,'Average Skill','trapmf',[20 40 50 70]);
a=addmf(a,'output',1,'High Skill','trapmf',[65 75 100 100]);

% The subplots to visualise the system
subplot(4,1,1),plotmf(a, 'input', 1)
subplot(4,1,2),plotmf(a, 'input', 2)
subplot(4,1,4),plotmf(a, 'output', 1)