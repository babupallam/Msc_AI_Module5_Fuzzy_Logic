a = mamfis('Name',"test");

a = addInput(a,[0 70],'Name',"linguistic age");
 
a = addMF(a,"linguistic age","gaussmf",[10 0],'Name',"young");
a = addMF(a,"linguistic age","gaussmf",[10 40],'Name',"middleaged");
a = addMF(a,"linguistic age","gaussmf",[10 70],'Name',"old");

%plotmf(a,'input',1)

a = addInput(a,[65 120],'Name',"linguistic weight");
 
a = addMF(a,"linguistic weight","trimf",[45 65 85],'Name',"small");
a = addMF(a,"linguistic weight","trimf",[78 98 118],'Name',"medium");
a = addMF(a,"linguistic weight","trimf",[100 120 140],'Name',"large");
  
%plotmf(a,'input',2)

a = addInput(a,[5 14],'Name',"male linguistic foot size");

a = addMF(a,"male linguistic foot size","trapmf",[4 5 6 7],'Name',"very small");
a = addMF(a,"male linguistic foot size","trapmf",[6 7 8 9],'Name',"small");
a = addMF(a,"male linguistic foot size","trapmf",[8 9 10 11],'Name',"medium");
a = addMF(a,"male linguistic foot size","trapmf",[10 11 12 13],'Name',"large");
a = addMF(a,"male linguistic foot size","trapmf",[12 13 14 15],'Name',"very large");
 
%plotmf(a,'input',3)
  
%subplot(3,1,1), plotmf(a,'input',1)
%subplot(3,1,2), plotmf(a,'input',2)
%subplot(3,1,3), plotmf(a,'input',3)
