clear; clc;

% x is time in fraction of days so 
x = zeros(1, 34);
start_year = 1980;
for i = 1:34
  x(i) = start_year;
  start_year +=1;
end

x

y = [3776958 3806932 3971528 4014410 4245984 4468841 4595862 4729977 4847836 4937608 4985198 4899121 4822734 4804214 4876643 4963393 5071268 5079188 5036898 4966055 5125933 5347692 5447586 5836786 6306562 6735260 7027942 7368969 7575696 7625502 8121372 8739880 8888548 8971837]

At = [zeros(1, 34) + 1; x; x.^2 ; x.^3]
A = transpose(At)

left = At * A;
right = At * transpose(y);

% solving equation a
a = left\right;
a0 = a(1)
a1 = a(2)
a2 = a(3)
a3 = a(4)

r = y - (a0 + a1*x + a2*(x.^2) + a3*(x.^3));
RMSE = rms(r)