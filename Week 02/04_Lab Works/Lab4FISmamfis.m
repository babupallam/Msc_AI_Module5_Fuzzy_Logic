L = mamfis('Name',"loanAdvice");

L = addInput(L,[0 100000],'Name',"lsalary");

L = addMF(L,"lsalary","trapmf",[0 0 10000 40000],'Name',"low");
L = addMF(L,"lsalary","trapmf",[10000 30000 70000 100000],'Name',"medium");
L = addMF(L,"lsalary","trapmf",[60000 90000 100000 100000],'Name',"high");

%plotmf(L,'input',1)
  
L = addInput(L,[0 40],'Name',"lperiod");

L = addMF(L,"lperiod","trimf",[0 0 10],'Name',"very low");
L = addMF(L,"lperiod","trimf",[0 10 20],'Name',"low");
L = addMF(L,"lperiod","trimf",[10 20 30],'Name',"medium");
L = addMF(L,"lperiod","trimf",[20 30 40],'Name',"high");
L = addMF(L,"lperiod","trimf",[30 40 40],'Name',"very high");
  
%plotmf(L,'input',2)

L = addOutput(L, [0 100],'Name',"decision")

L = addMF(L,"decision","trimf",[0 0 40],'Name',"low");
L = addMF(L,"decision","trapmf",[10 35 65 90],'Name',"medium");
L = addMF(L,"decision","trimf",[60 100 100],'Name',"high");

%plotmf(L,'output',1)
 
ruleList = [3 5 3 1 1; 1 1 1 1 1]

L = addRule(L, ruleList)

showrule(L)
showrule(L,'Format','symbolic')
showrule(L,'Format','indexed')
% 
% subplot(3,1,1), plotmf(L,'input',1)
% subplot(3,1,2), plotmf(L,'input',2)
% subplot(3,1,3), plotmf(L,'output',1)
