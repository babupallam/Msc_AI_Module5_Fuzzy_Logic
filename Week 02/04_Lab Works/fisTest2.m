%% LAB 4
% To remove the warning messages for using old syntax
warning('off','fuzzy:general:warnDeprecation_Newfis') 
warning('off','fuzzy:general:warnDeprecation_Addvar')
warning('off','fuzzy:general:warnDeprecation_Addmf')
warning('off','fuzzy:general:warnDeprecation_Evalfis')

% This m-file creates type-1 Mamdani fuzzy inference system (FIS)
fis = mamfis('Name',"Control Unit");% name of the FIS is "bank"

% linguistic Seasons (Date of Year) -- (0 to 365)
fis = addInput(fis,[0 100000],'Name',"Date of Year");
% Add three membership functions associated with this variable.
fis = addMF(fis,"Date of Year","gaussmf",[25,0],'Name',"Winter");
fis = addMF(fis,"Date of Year","gaussmf",[25,105.5],'Name',"Spring");
fis = addMF(fis,"Date of Year","gaussmf",[25,197.5],'Name',"Summer");
fis = addMF(fis,"Date of Year","gaussmf",[25,289],'Name',"Autumn");
fis = addMF(fis,"Date of Year","gaussmf",[25,365],'Name',"Winter2");

% The linguistic variable : Time of The Day
fis= addInput(fis,[0,1440],'Name',"Time of Day");

% add five membership functions over the domain
fis = addMF(fis,"Time of Day","trapmf",[0,0,60,240],'Name',"Twilight(1)");
fis = addMF(fis,"Time of Day","trapmf",[120,300,660,780],'Name',"Morning");
fis = addMF(fis,"Time of Day","trapmf",[660,780,1020,1140],'Name',"Afternoon");
fis = addMF(fis,"Time of Day","trapmf",[1020,1140,1320,1440],'Name',"Evening");
fis = addMF(fis,"Time of Day","trapmf",[1200,1380,1440,1440],'Name',"Twilight(2)");


% The linguistic variable : Temparature
fis= addInput(fis,[-20,40],'Name',"Temp");

% add five membership functions over the domain
fis = addMF(fis,"Temp","trapmf",[-20 -20 -1 0],'Name',"Very Cold");
fis = addMF(fis,"Temp","trapmf",[-2 0 4 6],'Name',"Cold");
fis = addMF(fis,"Temp","trapmf",[4 6 10 12],'Name',"Mederate");
fis = addMF(fis,"Temp","trapmf",[10 14 18 22],'Name',"Warm");
fis = addMF(fis,"Temp","trapmf",[18 22 40 40],'Name',"Very Warm");

% The linguistic variable : Heating %
fis= addOutput(fis,[-5,100],'Name',"Heating %");

% population output variable with membership functions over the domain
fis = addMF(fis,"Heating %","trapmf",[-5 -5 0 0],'Name',"Off");
fis = addMF(fis,"Heating %","trimf",[0 15 33],'Name',"Low");
fis = addMF(fis,"Heating %","trimf",[33 49.5 66],'Name',"Moderate");
fis = addMF(fis,"Heating %","trapmf",[66 83 100 100],'Name',"High");


% The rule declarations
rule1 = [1 1 2 3 1 1];
rule2 = [1 1 3 3 1 1];

rule3 = [5 5 2 3 1 1];
rule4 = [5 5 3 3 1 1];

rule5 = [5 1 2 3 1 1];
rule6 = [5 1 3 3 1 1];

rule7 = [1 5 2 3 1 1];
rule8 = [1 5 3 3 1 1]; 

% One input: Very Cold; Out = High
rule9 = [0 0 1 4 1 1]; 

% One input: Very Warm; Out = Off
rule10 = [0 0 5 1 1 1]; 

%Mrn & Vc = High
rule11 = [0 2 1 4 1 1]; 

%Mrn & C = High
rule12 = [0 2 2 4 1 1]; 

%Mrn & W = Low
rule13 = [0 2 4 2 1 1]; 

% Aft time & Temp
rule14 = [0 3 1 4 1 1]; 
rule15 = [0 3 2 4 1 1];
rule16 = [0 3 3 3 1 1];
rule17 = [0 3 4 2 1 1];
rule18 = [0 3 5 1 1 1];

% A matrix to hold the rule arrays
ruleList = [rule1; rule2; rule3; rule4; rule5; rule6; rule7; rule8; rule9; rule10;...
    rule11; rule12; rule13; rule14; rule15; rule16; rule17; rule18];

%display the existing rules
showrule(fis)

%add rules to the list
fis = addRule(fis,ruleList);

showrule(fis, "Format", "symbolic")
showrule(fis, "Format", "indexed")


% A varaible to hold the excel file
data = ('ControlUnitData.xlsx');

% % Read in the values and store the in testData
% testData = readtable(data);
% 
% % A for loop to process the data and output the results(fileName,sheetNo.)
% for i=1:size(testData,1)
%         % Evaluate the fuzzy system
%         output = evalfis([testData(i, 1), testData(i, 2), testData(i, 3) ], fis);
%         fprintf('%d) In(1): %.2f, In(2) %.2f, In(3) %.2f => Out: %.2f \n\n',i,testData(i, 1),testData(i, 2),testData(i, 3), output);  
%         % The following section changes where the output is saved/printed (‘H%d’,I+1) (H is column No.)
%         xlswrite('ControlUnitData.xlsx', output, 1, sprintf('H%d',i+1));
% end

% The ruleview allows you to see the rule-base
ruleview(fis)

% The subplots to visualise the system
figure(1)
subplot(4,1,1), plotmf(fis, 'input', 1)
subplot(4,1,2), plotmf(fis, 'input', 2)
subplot(4,1,3), plotmf(fis, 'input', 3)
subplot(4,1,4), plotmf(fis, 'output', 1)