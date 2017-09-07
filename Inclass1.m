% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a
%"1" is a number and "'1'"is a string. MatLab give the string "'1'" a numeric
%value as 49.
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]
%x2 arrange two number in an 1*2 array, a2 abreast two text into one text.
%x2 arrange a row and x2b arrange a column.
%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b


%"==" mean to compare the left to the right. Here a was given the value of
%b in the former command, so the test is positive.
%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b
%Comparing arrays means to compare each element respectively.
%explain why this gives an error:

b = [2, 3];
a == b
%We cannot compare arrays with different number of columns.
%explain why this does not give an error
b = 2;
a == b 
%b is a number. MatLab can compare a number with an array by comparing each
%element in the array to the number, and the result would be a logical
%array.
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]
% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
[oneToTen*2]
[2:2:20]
% 2. odd numbers from one to nineteen
[oneToTen*2-1]
[1:2:19]
% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
fliplr([oneToTen*2])
[20:-2:2]
% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)
%The command fliplr means to flip an array left to right, whereas the newly generated array is arranged vertically, there is no left nor
%right to it.
flipud(rot90(oneToTen))
%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2
%[a b;c d]*[e f;g h]=[ae+bg af+bh;ce+dg cf+dh],as an multiplication of
%matrices would do, whereas [a b;c d].*[e f;g h]=[ae bf;cg dh]
%explain this command:
m2./m1
%[a b;c d]./[e f;g h]=[a/e b/f;e/g d/h]
%extra credit: explain why this command gives a warning:
m2/m1
%This is the division of matrices, which can only happen when m1 has an
%inverse, which m1 does not.
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)
%select the element in row 2 column 3

rand_nums(2:4,3)
%select the array in row 2 to row 4 in column 3
rand_nums(1:2,3:4)
%select the array in row 1 to row 2 within column 3 to column 4
rand_nums(:,2)
%select the second column for all rows
rand_nums(1,:)
%select the first row for all columns
rand_nums(:,[1 3 5])
%select the 
%select the entire column 1 column 3 column 5
