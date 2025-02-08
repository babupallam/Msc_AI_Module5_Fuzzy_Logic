% This m-file creates a linguistic variable for age with three linguistic
% labels - young, middleaged and old. The first statement creates a new FIS
% with string name test and Matlab variable a. The FIS adopts certain defaults.


a = mamfis('Name',"test");

% This adds a variable called ’linguistic age’ to the FIS which is
% of type input and lies between 0 and 70.
a = addInput(a,[0 70],'Name',"linguistic age");
% We now add three membership functions associated with this variable.
a = addMF(a,"linguistic age","gaussmf",[10 0],'Name',"young");
a = addMF(a,"linguistic age","gaussmf",[10 40],'Name',"middleaged");
a = addMF(a,"linguistic age","gaussmf",[10 70],'Name',"old");

%%
% Now add a new variable into your m-file called ‘male linguistic weight’ which describes someone
% as small, medium or large over a domain ranging from 65Kg to 120Kg. Use triangular membership
% functions. Plot the result.

%add variable named "linquistic male" to the FIS which is of type input
%lies in between 65 and 120kg
a= addInput(a,[65,120],'Name',"linguistic weight");
% add three membership functions over the domain
a = addMF(a,"linguistic weight","trimf",[45,65 85],'Name',"small");
a = addMF(a,"linguistic weight","trimf",[78,98,110],'Name',"medium");
a = addMF(a,"linguistic weight","trimf",[100,120,140],'Name',"large");

%% 
% Finally add a third variable to the same m-file ’male linguistic foot size’ choosing five sensible labels
% and domain. Use membership functions that are not gaussian or triangular

%add variable named "linquistic foot size" to the FIS which is of type input
%lies in between UK3 to UK12
a= addInput(a,[5,14],'Name',"linguistic foot size");
% add three membership functions over the domain
a = addMF(a,"linguistic foot size","trapmf",[2,3,4,5],'Name',"UK3");
a = addMF(a,"linguistic foot size","trapmf",[3,5,6,7],'Name',"UK5");
a = addMF(a,"linguistic foot size","trapmf",[5,7,7,9],'Name',"UK7");
a = addMF(a,"linguistic foot size","trapmf",[6,7,9,10],'Name',"UK9");
a = addMF(a,"linguistic foot size","trapmf",[9,10,11,12],'Name',"UK11");


% This plots the membership functions:
subplot(3,1,1);
plotmf(a,'input',1)
subplot(3,1,2);
plotmf(a,'input',2)
subplot(3,1,3);
plotmf(a,'input',3)

