% Name: Eric Zounes
% Date: 10/26/12
% Lab 3

% 1. 


bisect((x^5 - x^4 + x -1), 0, 3, 10^-6, 100)

bisect((x^5 - x^4 + x -1), 0.5, 2, 10^-6, 100)

bisect((x^5 - x^4 + x -1), 0.9, 1.2, 10^-6, 100)


%  a. The second interval is half the distance of the first so the bisection algorithm would take one less iteration due to bisection halving the interval at each step. As the interval increases by twice the amount, it will take one additional iteration. 

% b. Analytically we know that the algorithm will choose either the left of right side of the interval. This decision is completely agnostic to the location of the root since the number of iterations is dependent on the length of the interval and its error tolerance. 

% 2. 


newton((x^5 - x^4 + x -1), (5*x^4 - 4*x^3 + 1), -100, 10^-6, 100)

newton((x^5 - x^4 + x -1), (5*x^4 - 4*x^3 + 1), 0, 2, 10^-6, 100)

newton((x^5 - x^4 + x -1), (5*x^4 - 4*x^3 + 1), .9, 10^-6, 100)

newton((x^5 - x^4 + x -1), (5*x^4 - 4*x^3 + 1), .99, 10^-6, 100)

newton((x^5 - x^4 + x -1), (5*x^4 - 4*x^3 + 1), 1.1, 10^-6, 100)

newton((x^5 - x^4 + x -1), (5*x^4 - 4*x^3 + 1), 1.4, 10^-6, 100)

newton((x^5 - x^4 + x -1), (5*x^4 - 4*x^3 + 1), 1000000, 10^-6, 100)

% a. Newton is much better in most situations. It's most effective when x0 is near the root. 

% b. For guesses near the actual root, it makes more sense to use an error tolerance that is twice the magnitude as bisection. Newton tends to compute more accurate approximations of the roots in that it converges at a quadratic rate. 

% 3. 

secant((x^5 - x^4 + x -1), 0, 3, 10^-6, 100)

secant((x^5 - x^4 + x -1), 0.5, 2, 10^-6, 100)

secant((x^5 - x^4 + x -1), 0.9, 1.2, 10^-6, 100)

% a. When the interval begins closer to the actual root,  the secant method is more effective than bisection. It takes roughly 11 less iterations, however, it takes 4 iterations more than Newton's method. 

% b. The size of the interval affects bisection significantly more than the secant method. 


% 4. The error in the roots makes these algorithms unstable in that approximating roots when they are very large can introduce too much error. 

