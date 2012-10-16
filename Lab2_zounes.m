% Name: Eric Zounes
% Date: 09/26/2012
% Lab2

% 1. 


% a. To get log(1.9), what value of x must be used in (1)?
% -.9 since 1 -x = 1.9)  

% b.
disp(sprintf('\n\ne:\n'))
% 10 significant figures 
error_bound=.5E-9;
xtrue=log(1.9);
x=-.9;
disp(sprintf('k \t x_n \t\t Relerr'));
n=0;
xn=0;
Relerr=abs(xtrue-xn)/xtrue;
disp(sprintf('%d \t %0.11f \t %0.5e',n,xn,Relerr)); 
tic
while Relerr>error_bound
  n=n+1;
  syms x;
  % Create a symbolic taylor expression and evaluate
% xn = subs(taylor(log(1-x), n),x,-.9)
 xn = subs(taylor(log((1+x)/(1-x)),n),x,(9/29)) 
  Relerr= abs(xtrue-xn)/xtrue;
  disp(sprintf('%d \t %0.11f \t %0.5e',n,xn,Relerr)); 
end
toc

% When the script is run on the given taylor series we find that in order to get 10 significant digits, n = 154. Relative error = 4.79700e-10. It takes approximately 6.04 seconds. 

% c. Do the same as (a) for series (2)
% (1+x)/(1-x) = 1.9 .. then x = 9/29 

% d. Do the same as (b) for series (2)
% The results are the same except it only took 5.74 seconds. The computation takes much longer due to recalculating the entire series each time. 

% e. Which of (1) or (2) is more efficient for computing log(1:9)? Briefly explain your reasoning.
% The second method takes less time with the same amount of error. 

% 2.

% a. Apply your script to the function f(x) = (sqrt(4+x) - 2)/x

tic
for x = 1:20 
	 disp((sqrt(4+(.1^x)) - 2)/(.1^x))
end
toc

% Reformulation
tic
for x = 1:20
	disp((.1^x)/(.1^x * sqrt(4 + .1^x) + 2*.1^x))
end
toc

% original	reformulated


%0.2485		0.2485
                
%0.2498		0.2498 	
                               
% 0.2500         0.2500          
                               
% 0.2500         0.2500          
                               
% 0.2500         0.2500          
                               
% 0.2500         0.2500          
                               
% 0.2500         0.2500          
                               
% 0.2500         0.2500          
                               
% 0.2500         0.2500          
                               
% 0.2500         0.2500          
                               
% 0.2500         0.2500          
                               
% 0.2500         0.2500          
                               
% 0.2487         0.2500          
                               
% 0.2220         0.2500          
                               
% 0             0.2500          
                               
% 0             0.2500          
                               
% 0             0.2500          
                               
% 0             0.2500          
                               
% 0             0.2500          
                               
% 0             0.2500          


% The reformulation is much more accurate in that it maintains stability at .2500 while the original function converges after 10^-15. 


% b. Apply your script to the function f(x) = (1 - e^-x)/x 
tic
for x = 1:20 
	disp((1 - exp(-.1^x))/(.1^x) )
end
toc

% A reformulation of the equation isn't quite what we want in this instance, so we simply take a taylor expansion.

tic
for x = 1:20
	disp((1- exp(-.1^x))/(.1^x))
end
toc

syms x 
for i = 1:20
disp(subs(taylor((1- exp(-x))/(x)),x, .1^i))
end

% original	taylor expansion O(n^6) 

% 0.9516		0.9516
                
% 0.9950         0.9950
                
% 0.9995         0.9995
                
% 1.0000         1.0000
                
% 1.0000         1.0000
                
% 1.0000         1.0000
                
% 1.0000         1.0000
                
% 1.0000         1.0000
                
% 1.0000         1.0000
                
% 1.0000         1.0000
                
% 1.0000         1.0000
                
% 1.0000         1.0000
                
% 1.0003         1.0000
                
% 0.9992         1.0000
                
% 0.9992         1.0000
                
% 1.1102          1
                
%  0              1
                
%  0              1
                
%  0              1
                
%  0              1


% The original function approaches 0 because the numerator will eventually evaluate to 0 due to the amount of precision lost in the subtraction between 1 and e^-x. The taylor series is alternating which helps reduce the amount of error gained at each Nth term. Thus, we are able to compute the answer 1 as the numerator and denomintor both appear to approach the same value. 
