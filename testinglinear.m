clear;
clc;
close all

%omar project thing: solver for any-step query

syms x  %allowing x to exist

prompt = "Input query: ";
inputStr = input(prompt, 's'); % Get user input as a string

%eq1 = input(prompt); %setting eq1 to user input equation

inputStr = regexprep(inputStr, '(\d)([a-zA-Z])', '$1*$2'); %inserting multiplication symbol

inputStr = strrep(inputStr, '=', '=='); %inserting equals 
disp(inputStr)
eq1 = str2sym(inputStr);
sol = solve(eq1, x)

%sol=solve([eq1], [x])  


%8x+8=15(x+9)