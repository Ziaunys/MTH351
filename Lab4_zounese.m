% Name: Eric Zounes
% Date: 11/04/12
% Lab 4
 
% 1. 
N = 10;
x = linspace(-5,5,N+1);
f = inline('1./(1+x.*x)', 'x');
y = f(x)
plot(x,y,'o')
title('N+1 = 11 equally-spaced data points')
t = [-5:.1:5];
figure;
plot(t,f(t),'-')
title('Runge function')

% 2. 

PN = polyfit(x,y,N);
v = polyval(PN,t);
err = norm(f(t)-v,inf) 

figure; 
plot(x,y,'o',t,f(t),'-',t,v,'--')
title(sprintf('f(t) and P_{10}(t), err%g', err))


% 3. Interpolation at Chebychev nodes: 

K = N+1;
a = -5;
b = 5;
xcheb = zeros(1,K);
for i = 1:K
xcheb(i) = (a+b)/2 + (b-a)/2 * cos( (i-.5)*pi/K);
end
ycheb = f(xcheb);

PNcheb = polyfit(xcheb, ycheb, K);
vcheb = polyval(PNcheb, t) 
cheberr = norm(f(t)-vcheb,inf) 

figure; 
plot(xcheb,ycheb, t, f(t), '-', t, vcheb, '--') 
title(sprintf('f(t) and P_{11}(t), cheb err %g', cheberr))
% 4. Repeat 1, 2, and 3 with N = 20 and N = 50. Explain what behavior you observe. 



