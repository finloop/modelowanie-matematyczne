clear;
tau_1 = 0.2;
b = 1;
A_ = 4;
p_1 = 12;
p_2 = 5;
p_3 = 13;
tau = tau_1;
A =0.5;

u1 = -1.1447;
T = (-u1^2 + 1)/tau - 1
delta = (-u1^2 + 1)/tau*(-1) - b / (-tau)
T^2 - 4*delta

lambda1 = 0.5 * (T - sqrt(T^2 - 4*delta))
lambda2 = 0.5 * (T + sqrt(T^2 - 4*delta))

for A = (A-0.1*abs(A)):0.05*abs(A):(A+0.1*abs(A))
    function du=syst2(t, u) //definicja układu RR
        du=zeros(2,1);
        du(1)=((-1/3)*u(1)^3+u(1)-u(2))/tau;
        du(2)=b*u(1)-u(2)+A;
    endfunction
    x0=[0;0]; t0=0; t=0:0.05:50;y=ode("stiff",x0,t0,t,syst2);
    scf(1);
    plot(t,y); xgrid();
    scf(2);
    plot(y(1,:), y(2,:));
end
xs2png(1, "img/3-1-xy.png")
xs2png(2, "img/3-1-phase.png")
close(); close();

tau = 10;
for A = (A-0.1*abs(A)):0.05*abs(A):(A+0.1*abs(A))
    function du=syst2(t, u) //definicja układu RR
        du=zeros(2,1);
        du(1)=((-1/3)*u(1)^3+u(1)-u(2))/tau;
        du(2)=b*u(1)-u(2)+A;
    endfunction
    x0=[0;0]; t0=0; t=0:0.05:50;y=ode("stiff",x0,t0,t,syst2);
    scf(1);
    plot(t,y); xgrid();
    scf(2);
    plot(y(1,:), y(2,:));
end
xs2png(1, "img/3-1-tau2-xy.png")
xs2png(2, "img/3-1-tau2-phase.png")
close(); close();

/////////////// Pierwszy rodzaj rozwiązania ////////////////////////////////////
A = -0.1;
r = 0.1;
steps = 20;
for A = (A-r*abs(A)):r/steps*abs(A):(A+r*abs(A))
    function du=syst2(t, u) //definicja układu RR
        du=zeros(2,1);
        du(1)=(-1/3*u(1)^3+u(1)-u(2))/tau;
        du(2)=b*u(1)-u(2)+A;
    endfunction
    x0=[0;0]; t0=0; t=0:0.05:50;y=ode("stiff",x0,t0,t,syst2);
    scf(1);
    plot(t,y); xgrid();
    scf(2);
    plot(y(1,:), y(2,:));
end
xs2png(1, "img/3-1-oscylacje-xy.png")
xs2png(2, "img/3-1-oscylacje-phase.png")
close(); close();


