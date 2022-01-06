/////////////////////////////////////// Zadanie 6 //////////////////////////////
sigma = 10;
b = 8/3;
r = 28;

function du=syst2(t, u)
    du=zeros(3,1);
    du(1)=sigma * (u(2)- u(1))
    du(2)=u(1)*(r - u(3)) - u(2); 
    du(3)=u(1)*u(2) - b *u(3);
endfunction
x0=[1;1;1]; t0=0; t=0:0.05:50;y=ode("stiff",x0,t0,t,syst2);
scf(1);
plot(t,y); xgrid();
scf(2);
plot(y(1,:), y(2,:));
scf(3);
plot(y(1,:), y(3,:));
scf(4);
plot(y(2,:), y(3,:));

xs2png(1, "img/6-111-xy.png")
xs2png(2, "img/6-111-phase-1-2.png")
xs2png(3, "img/6-111-phase-1-3.png")
xs2png(4, "img/6-111-phase-2-3.png")
close(); close(); close(); close();

x0=[-1;-1;-1]; t0=0; t=0:0.05:50;y=ode("stiff",x0,t0,t,syst2);
scf(1);
plot(t,y); xgrid();
scf(2);
plot(y(1,:), y(2,:));
scf(3);
plot(y(1,:), y(3,:));
scf(4);
plot(y(2,:), y(3,:));

xs2png(1, "img/6--111-xy.png")
xs2png(2, "img/6--111-phase-1-2.png")
xs2png(3, "img/6--111-phase-1-3.png")
xs2png(4, "img/6--111-phase-2-3.png")
close(); close(); close(); close();

//////////////////////////////////// Zadanie 7 /////////////////////////////////
sigma = 12;
b = 5;
r = 13;

x0=[1;1;1]; t0=0; t=0:0.05:10;y=ode("stiff",x0,t0,t,syst2);
scf(1);
plot(t,y); xgrid();
scf(2);
plot(y(1,:), y(2,:));
scf(3);
plot(y(1,:), y(3,:));
scf(4);
plot(y(2,:), y(3,:));

xs2png(1, "img/7-111-xy.png")
xs2png(2, "img/7-111-phase-1-2.png")
xs2png(3, "img/7-111-phase-1-3.png")
xs2png(4, "img/7-111-phase-2-3.png")
close(); close(); close(); close();

x0=[-20;-20;-20]; t0=0; t=0:0.05:10;y=ode("stiff",x0,t0,t,syst2);
scf(1);
plot(t,y); xgrid();
scf(2);
plot(y(1,:), y(2,:));
scf(3);
plot(y(1,:), y(3,:));
scf(4);
plot(y(2,:), y(3,:));

xs2png(1, "img/7--2011-xy.png")
xs2png(2, "img/7--2011-phase-1-2.png")
xs2png(3, "img/7--2011-phase-1-3.png")
xs2png(4, "img/--2011-phase-2-3.png")
close(); close(); close(); close();

