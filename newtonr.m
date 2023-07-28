function y=newtonr(fun, x0, to1)
dfun = diff(sym(fun));
f = subs(fun, x0);
df = subs(dfun, x0);
c = 1;

while (abs(f) > to1)
	a = x0-f/df;
	f = subs(fun, a);
	df = subs(dfun, a);
	x0 = a;
	c=c+1
end
c
a
end