% Name: Eric Zounes
% Date: 09/26/2012
% Lab1: MATLAB Tutorial

% Task A
% 1. 
tut1 = [1,2,3,4,5; 6,7,8,9,10; 11,12,13,14,15] 
tut2 = [1,3,5,7,9; 11,13,15,17,19; 2,3,5,7,11] 

% Output: 

% tut1 =

%     1     2     3     4     5
%     6     7     8     9    10
%    11    12    13    14    15


% tut2 =

%     1     3     5     7     9
%    11    13    15    17    19
%     2     3     5     7    11

% 2. 
size(tut1)
size(tut2)

% Output: (both) 

% ans =

%     3     5

% Task B 
% 1.
diag(ones(1,5))

% Output: 

% ans =

%    1     0     0     0     0
%    0     1     0     0     0
%    0     0     1     0     0
%    0     0     0     1     0
%    0     0     0     0     1

% 2. 
evens = [6:3:24] 

% Output:

% evens =

%    6     8    10    12    14    16    18    20    22    24

% Task C

fdj = [1 2 3;5 4 3; 6 5 8]

% 1.

% Output:

% fdj =

%    1     2     3
%    5     4     3
%    6     5     8

fdj+3

% Output: 

% ans =

%    4     5     6
%    8     7     6
%    9     8    11

fdj-6

% Output: 

% ans =

%   -5    -4    -3
%   -1    -2    -3
%    0    -1     2

fdj/2

% Output: 
 
% ans =

%   0.5000    1.0000    1.5000
%   2.5000    2.0000    1.5000
%   3.0000    2.5000    4.0000

% 2.

abc = 1:10;

% Output:

% abc =

%     1     2     3     4     5     6     7     8     9    10
 
% This command creates a vector of integers from 1 to 10 with a default step of 1. 

def = 5:14;

% Output: 
 
% def =

%     5     6     7     8     9    10    11    12    13    14

% This command crates a vector of integers from 1 to 10 with a default step of 1.

ghi = 3*abc + def

% Output: 

% ghi =
%
%     8    12    16    20    24    28    32    36    40    44

% This command does component-wise multiplication on abc then performs addition on the resultant vector with def.

% 3. 

abc = [1 2 3 4; 5 6 7 8];
def = [4 3 2 1;8 7 6 5]; 

abc + def
% Output:
 
% ans =
%
%    5     5     5     5
%   13    13    13    13
%
% The output contains the same value for each row because each component of abc and def increment and decrement respectively.

% 4. 

tut1 .* tut2 
tut2 .* tut1 
tut1 ./ tut2 
tut2 ./ tut1 
tut1 .^ 2 



tut1 .* tut2 

% Output: 
% 
% ans =

%     1     6    15    28    45
%    66    91   120   153   190
%    22    36    65    98   165


tut2 .* tut1 

% Output: 
%
%ans =

%     1     6    15    28    45
%    66    91   120   153   190
%    22    36    65    98   165

tut1 ./ tut2 

% Output:
%
%ans =

%    1.0000    0.6667    0.6000    0.5714    0.5556
%    0.5455    0.5385    0.5333    0.5294    0.5263
%    5.5000    4.0000    2.6000    2.0000    1.3636

tut2 ./ tut1 

% Output:

% ans =

%    1.0000    1.5000    1.6667    1.7500    1.8000
%    1.8333    1.8571    1.8750    1.8889    1.9000
%    0.1818    0.2500    0.3846    0.5000    0.7333



tut1 .^ 2 

% Output: 

%ans =

%     1     4     9    16    25
%    36    49    64    81   100
%   121   144   169   196   225



% Task D 

% 1. 

% tut1 * tut2 

% Output: ERROR

% The matrices tut1 and tut2 cannot be multiplied because the dimensions of their rows/columns are not equal.

% tut2 * tut1 

% Output: ERROR 

% The matrices tut2 and tut1 cannot be multiplied because the dimensions of their rows/coumns are not equal.

tut1 * tut2'

% Output: 

% ans =
  
%  95  245  106 
%  220 620 246 
%  345 995 386 

% tut1 can be multiplied by the transpose of tut2 because their dimensions are equal.

tut2' * tut1

% Output: 

% ans =

%   89   103   117   131   145
%  114   133   152   171   190
%  150   175   200   225   250
%  186   217   248   279   310
%  244   283   322   361   400

tut1 ^ 2 

% Output: ERROR

% tut1 cannot be multiplied because it isn't square.

(tut2' * tut1)^2

% Output:

% ans =

%      96959      112803      128647      144491      160335
%     126274      146908      167542      188176      208810
%     166150      193300      220450      247600      274750
%     206026      239692      273358      307024      340690
%     267024      310658      354292      397926      441560

% The first multiplication results in a square matrix which allows it to be squared. 

% 2. 

foo = [1,2,3,4,5,6,7,8,9,10]

foo*ones(1,10)'

% Output: 55

% ans = 55 

% 3. 

[1:100]*ones(1,100)'

% Output: 

% ans = 5050 


% 4.

bar = [2:2:1001] 

bar*ones(1,size(bar,2))'

% Output:

% ans = 250500

% Task E 

% 1.

% The output of the graph shows greater resolution on the slope of the function.

% 2. 

% The output is the unit circle. 

% 3. 















% Task F 

