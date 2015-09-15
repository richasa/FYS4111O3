%% Schrödinger equation in a periodic potential
%%psi(r) = exp(ikr)u(r).

n = -4;

c3 = [1/8 0 1/8 1/2 3/4 1/2 1/8 0 1/8];

u1 = zeros(5002,1);
u2 = zeros(5002,1);
u3 = zeros(5002,1);

x = zeros(1002,1);
a = 2;  %Å
l = 9.7; %Å 
z = 0.0; %starting point
h = 1/100; %spacing;
lx = 50; %end of the line
i = 1; %index
L = 12; %Å
k1 = 2*pi/l; %1/Å
k2 = 2*pi/2; %1/Å
k3 = 2*pi/20; %1/Å

while z < lx
    %%while n form -4 to 4 
    while n < (4+1)
     u1(i) = u1(i) + c3(n+5)*exp((1i*2*pi*n/a)*z);
     u2(i) = u2(i) + c3(n+5)*exp((1i*2*pi*n/a)*z);
     u3(i) = u3(i) + c3(n+5)*exp((1i*2*pi*n/a)*z);
      n = n+1;  
    end
     u1(i) = u1(i)*exp(1i*k1*z);
     u2(i) = u2(i)*exp(1i*k2*z);
     u3(i) = u3(i)*exp(1i*k3*z);
    
    x(i+1) = x(i) + h;
    n = -4;
    i = i + 1;
    z = z + h;
end

plot(x,u1,'red')
hold on
plot(x,u2,'blue')
hold on
plot(x,u3,'green')

title(' u(r)')
xlabel('x')
ylabel('u(r)')
legend('L1 = 9.7Å','L2 = 2','L3 = 20')
