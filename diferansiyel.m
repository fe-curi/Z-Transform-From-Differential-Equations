pkg load symbolic
syms x(k) z;
f = input('Diferansiyel denklemi x(k) türünde giriniz: ');
x0 = input('X(0) değerini giriniz: ');
x1 = input('X(1) değerini giriniz: ');
f1 = ztrans(f,k,z)
syms pZT
f1 = subs(f1,ztrans(x(k),k,z),pZT)
f2 = solve(f1,pZT)
pretty(f2)
f2 = subs(f2,[x(0),x(1)],[x0,x1])
disp('********************************************')
disp('SONUÇ : ')
pretty(f2)
disp('********************************************')
