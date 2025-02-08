L = mamfis('Name',"catLover");

L = addInput(L,[0 10],'Name',"miaows");

L = addMF(L,"miaows","trimf",[0,3,7],'Name',"intermittent");
L = addMF(L,"miaows","trimf",[4,8,10],'Name',"persistant");
  
L = addInput(L,[0 10],'Name',"size");

L = addMF(L,"size","trimf",[0,2,6],'Name',"small");
L = addMF(L,"size","trimf",[4 7 9],'Name',"medium");
L = addMF(L,"size","trimf",[7.5,9,10],'Name',"large");

L = addOutput(L, [20,150],'Name',"amount") %g

L = addMF(L,"amount","trimf",[20,30,70],'Name',"a_bit");
L = addMF(L,"amount","trimf",[40,80,100],'Name',"average");
L = addMF(L,"amount","trimf",[90 130 150],'Name',"a_lot");
 
%define four rules
ruleList = [1 0 3 1 1; 2 1 1 1 1; 2 2 2 1 1; 0 3 3 1 1]

L = addRule(L, ruleList)

showrule(L)
showrule(L,'Format','symbolic')
showrule(L,'Format','indexed')

subplot(3,1,1), plotmf(L,'input',1)
subplot(3,1,2), plotmf(L,'input',2)
subplot(3,1,3), plotmf(L,'output',1)
