%% To remove the warning messages for using old syntax
warning('off','fuzzy:general:warnDeprecation_Newfis') 
warning('off','fuzzy:general:warnDeprecation_Addvar')
warning('off','fuzzy:general:warnDeprecation_Addmf')
warning('off','fuzzy:general:warnDeprecation_Evalfis')

%% Clears the Command Window of clutter
clc

%% A declaration of new FIS
a = newfis('My Fis'); % Enter you system/idea name here

%% Declaring a new variable - this is an INPUT(1)
a=addvar(a,'input','ENTER_INPUT_NAME',[0 100]); % ENTER THE NUBERS FROM AND TO FOR YOUR INPUT, IF GRADING IS OUT OF 100, PUT 0 TO 100

% Populating the 1st input variable with membership functions
% You can call these whatever you want, 'Slim', 'Average', 'Athletic', etc.
a=addmf(a,'input',1,'Enter_Input_Population','trapmf',[0 0 15 25]); % trapmf is a trapezoid shape (trapmf needs 4 input numbers)
a=addmf(a,'input',1,'Enter_Input_Population','trimf',[20 50 80]); % trimf is a triangle shape (trimf needs 3 input numbers)
a=addmf(a,'input',1,'Enter_Input_Population','trapmf',[70 90 100 100]);

%% Declaring a new variable - this is another INPUT(2)
a=addvar(a,'input','ENTER_INPUT_NAME',[0 100]); 

% Populating the 2nd input variable with membership functions
% You can call these whatever you want, as opposed to 'Very Little', you could have 'Small' etc.
a=addmf(a,'input',2,'Very Little','trapmf',[0 0 10 20]); 
a=addmf(a,'input',2,'Little','trimf',[15 25 35]); 
a=addmf(a,'input',2,'Medium','trimf',[30 50 70]); 
a=addmf(a,'input',2,'High','trimf',[65 75 85]);
a=addmf(a,'input',2,'Very High','trapmf',[80 90 100 100]);

%% Declaring a new variable - this is an OUTPUT(1)
a=addvar(a,'output','ENTER_OUTPUT_NAME',[0 100]); % this is for your overall output, so if it is for say 'Height', this would be 'Height'

% Populating the output variable with membership functions - You can have more outputs if you wish
a=addmf(a,'output',1,'Short','trapmf',[0 0 10 25]); % Keeping in with the height analysis, the overall outcome would be short, average or tall.
a=addmf(a,'output',1,'Average ','trapmf',[20 40 50 70]);
a=addmf(a,'output',1,'Tall','trapmf',[65 75 100 100]);

%% The subplots to visualise the system
subplot(4,1,1),plotmf(a, 'input', 1)
subplot(4,1,2),plotmf(a, 'input', 2)
subplot(4,1,4),plotmf(a, 'output', 1)