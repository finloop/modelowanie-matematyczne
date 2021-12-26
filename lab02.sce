clear;clc;clf;

/*
        Zadanie 4
 */
T=0.0:0.1:10;
k1 = -3 + sqrt(5);
k2 = -3 - sqrt(5);
C2 = 1/(-k2/k1 + 1);
C1 = 1 - C2;

function y=yy(t)
    y = list();
    y(1) = C1*exp(k1*t) + C2*exp(k2*t); // 
    y(2) = C1*k1*exp(k1*t) + C2*k2*exp(k2*t);
endfunction

plot(T, [yy(T)(1); yy(T)(2)])
xs2png(0, "img/4-analityczne.png")
close();

function zad1(u, k, m)
    function dy=fun(t, y)
        dy(1)=y(2);
        dy(2)=-u/m*y(2)-k/m*y(1);
    endfunction
    
    t0=0.0;y0=[1;0];
    T=0.0:0.1:10;
    y=ode(y0,t0,T,fun,list(fun));
    scf(3);
    plot(T,y); xgrid();
    scf(4);
    plot(y(1,:),y(2,:)); xgrid();
endfunction

zad1(6, 4, 1) // k_1 i k_2 są różne, rzeczywiste
xs2png(3, "img/4-rzeczywiste-xy.png")
xs2png(4, "img/4-rzeczywiste-phase.png")
close();close();

zad1(1, 4, 1) // k_1 i k_2 są zespolone
xs2png(3, "img/4-zespolone-xy.png")
xs2png(4, "img/4-zespolone-phase.png")
close();close();

zad1(0, 4, 1) // k1 i k_2 brak oporu
xs2png(3, "img/4-boporu-xy.png")
xs2png(4, "img/4-boporu-phase.png")
close();close();

zad1(2, 4, 1) // k1 i k_2 są równe
xs2png(3, "img/4-rowne-xy.png")
xs2png(4, "img/4-rowne-phase.png")
close();close();

/*
        Zadanie 5
        
        u = 6
        k = 4
        m = 1
 */
 
function zad5(u, k, m, y0)
    for u = (u-0.1*u):0.05:(u+0.1*u)
        for k = (k-0.1*k):0.05:(k-0.1*k)
            for m = (m-0.1*m):0.05:(m-0.1*m)
                function dy=fun(t, y)
                    dy(1)=y(2);
                    dy(2)=-u/m*y(2)-k/m*y(1);
                endfunction
                
                t0=0.0;
                T=0.0:0.1:10;
                y=ode(y0,t0,T,fun,list(fun));
                scf(3);
                plot(T,y); xgrid();
                scf(4);
                plot(y(1,:),y(2,:)); xgrid();
            end
        end
    end
endfunction


zad5(6, 4, 1, [1;0]) // k_1 i k_2 są różne, rzeczywiste
xs2png(3, "img/5-rzeczywiste-xy.png")
xs2png(4, "img/5-rzeczywiste-phase.png")
close();close();

zad5(1, 4, 1, [1;0]) // k_1 i k_2 są zespolone
xs2png(3, "img/5-zespolone-xy.png")
xs2png(4, "img/5-zespolone-phase.png")
close();close();

zad5(0, 4, 1, [1;0]) // k1 i k_2 brak oporu
xs2png(3, "img/5-boporu-xy.png")
xs2png(4, "img/5-boporu-phase.png")
close();close();

zad5(2, 4, 1, [1;0]) // k1 i k_2 są równe
xs2png(3, "img/5-rowne-xy.png")
xs2png(4, "img/5-rowne-phase.png")
close();close();

////////////////////////////////////////////////////////////////////////////////

zad5(6, 4, 1, [1;1]) // k_1 i k_2 są różne, rzeczywiste
xs2png(3, "img/5-rzeczywiste-xy-11.png")
close();close();

zad5(1, 4, 1, [1;1]) // k_1 i k_2 są zespolone
xs2png(3, "img/5-zespolone-xy-11.png")
close();close();

zad5(0, 4, 1, [1;1]) // k1 i k_2 brak oporu
xs2png(3, "img/5-boporu-xy-11.png")
close();close();

zad5(2, 4, 1, [1;1]) // k1 i k_2 są równe
xs2png(3, "img/5-rowne-xy-11.png")
close();close();

////////////////////////////////////////////////////////////////////////////////

zad5(6, 4, 1, [0;1]) // k_1 i k_2 są różne, rzeczywiste
xs2png(3, "img/5-rzeczywiste-xy-01.png")
close();close();

zad5(1, 4, 1, [0;1]) // k_1 i k_2 są zespolone
xs2png(3, "img/5-zespolone-xy-01.png")
close();close();

zad5(0, 4, 1, [0;1]) // k1 i k_2 brak oporu
xs2png(3, "img/5-boporu-xy-01.png")
close();close();

zad5(2, 4, 1, [0;1]) // k1 i k_2 są równe
xs2png(3, "img/5-rowne-xy-01.png")
close();close();

/*
        Zadanie 6
        
        u = 6
        k = 4
        m = 1
 */
 
k(1) = -3+sqrt(5);
k(2) = -3-sqrt(5);

C(2) = 1/( -k(2)/k(1)+1 );
C(1) = 1 - C(2);

function y=an(t)
    y=C(1)*exp(k(1)*t) + C(2)*exp(k(2)*t)
endfunction

scf(2);
plot(0.0:0.1:3,an(0.0:0.1:3)); xgrid();


zad1(6,4,1)

/*
        Zadanie 7
        
        u = 6
        k = 4
        m = 1
        a = 2
        omega = 1
 */
 
function zad7(u, k, m, a, omega)
    function dy=fun(t, y)
        dy(1)=y(2);
        dy(2)=-u/m*y(2)-k/m*y(1) + a*sin(omega*t);
    endfunction
    
    t0=0.0;y0=[1;0];
    T=0.0:0.1:30;
    y=ode(y0,t0,T,fun,list(fun));
    scf(3);
    plot(T,y(1,:)); xgrid();
    //scf(4);
    //plot(y(1,:),y(2,:)); xgrid();
endfunction

function zad7red(u, k, m, a, omega)
    function dy=fun(t, y)
        dy(1)=y(2);
        dy(2)=-u/m*y(2)-k/m*y(1) + a*sin(omega*t);
    endfunction
    
    t0=0.0;y0=[1;0];
    T=0.0:0.1:80;
    y=ode(y0,t0,T,fun,list(fun));
    scf(3);
    plot(T,y(1,:), 'r'); xgrid();
    //scf(4);
    //plot(y(1,:),y(2,:), 'r'); xgrid();
endfunction

for a=1.9:0.05:2.1
for omega=0.9:0.05:1.1
zad7(6, 4, 1, a, omega) // Wartości zadane
end
end
xs2png(3, "img/7-zadane-xy.png")
close();

for a=1.9:0.05:2.1
for omega=0.9:0.05:1.1
zad7(4, 2, 1, 2, omega) // k_1 i k_2 są różne, rzeczywiste
end
end
xs2png(3, "img/7-rzeczywiste-xy.png")
close();

for a=1.9:0.05:2.1
for omega=0.9:0.05:1.1
zad7(1, 4, 1, 2, omega) // k_1 i k_2 są zespolone
end
end
xs2png(3, "img/7-zespolone-xy.png")
close();

for a=1.9:0.05:2.1
for omega=0.9:0.05:1.1
zad7(0, 1, 1, 2, omega) // Bez oporu
end
end
xs2png(3, "img/7-rowne-xy.png")
close();

//////////////////////////////////////////////////////////////////////////////

function zad7f2(u, k, m, a, omega)
    function dy=fun(t, y)
        dy(1)=y(2);
        dy(2)=-u/m*y(2)-k/m*y(1) + a*exp(sin(omega*t));
    endfunction
    
    t0=0.0;y0=[1;0];
    T=0.0:0.1:30;
    y=ode(y0,t0,T,fun,list(fun));
    scf(3);
    plot(T,y(1,:), 'r'); xgrid();
    //scf(4);
    //plot(y(1,:),y(2,:)); xgrid();
endfunction

for a=1.9:0.05:2.1
for omega=0.9:0.05:1.1
zad7f2(6, 4, 1, a, omega) // Wartości zadane
end
end
xs2png(3, "img/7-zadane-xy-f2.png")
close();

for a=1.9:0.05:2.1
for omega=0.9:0.05:1.1
zad7f2(4, 2, 1, 2, omega) // k_1 i k_2 są różne, rzeczywiste
end
end
xs2png(3, "img/7-rzeczywiste-xy-f2.png")
close();

for a=1.9:0.05:2.1
for omega=0.9:0.05:1.1
zad7f2(1, 4, 1, 2, omega) // k_1 i k_2 są zespolone
end
end
xs2png(3, "img/7-zespolone-xy-f2.png")
close();

for a=1.9:0.05:2.1
for omega=0.9:0.05:1.1
zad7f2(0, 1, 1, 2, omega) // Bez oporu
end
end
xs2png(3, "img/7-boporu-xy-f2.png")
close();


///////////////////////////////////////////////////////////////////////////////



for omega=1:0.05:1.1
    zad7(6, 4, 1, 2, omega)
end
zad7red(6, 4, 1, 2, 0.01)


m_1 = 1;
m_2 = 5;
u_1 = 6;
u_2 = 1;
k_1 = 4;
k_2 = 1;
a=2;
omega=1;
function zad8(u_1,u_2, k_1, k_2, m_1, m_2, a, omega, y00)
    function dy=fun(t, y)
        dy(1)=y(2); // 
        dy(2)=k_2/m_1*y(3)+u_2/m_1*y(4)-k_2/m_1*y(1)-u_2/m_1*y(2)-k_1/m_1*y(1)-u_1/m_1*y(2)
        dy(3)=y(4)
        dy(4)=-k_2/m_2*y(3)-u_2/m_2*y(4)+k_2/m_1*y(1)+u_2/m_2*y(2)+1/m_2 * a*sin(omega*t)
    endfunction
    
    t0=0.0;y0=y00;
    T=0.0:0.5:40;
    y=ode(y0,t0,T,fun,list(fun));
    scf(3);
    plot(T,y); xgrid();
    scf(4);
    plot(y(1,:),y(2,:)); xgrid();
    scf(5);
    plot(y(3,:),y(4,:)); xgrid();
endfunction


zad8(u_1,u_2, k_1, k_2, m_1, 5, a, omega, [1;0;0;1]);
zad8(u_1,u_2, k_1, k_2, m_1, 5.1, a, omega,[1;0;0;1]);
zad8(u_1,u_2, k_1, k_2, m_1, 4.8, a, omega, [1;0;0;1]);
xs2png(3, "img/8-zadane-xy.png")
xs2png(4, "img/8-zadane-phase-12.png")
xs2png(5, "img/8-zadane-phase-34.png")
close();close();close();


zad8(u_1,u_2, 4, k_2, m_1, m_2, a, omega, [0;1;1;0]);
zad8(u_1,u_2, 4.4, k_2, m_1, m_2, a, omega, [0;1;1;0]);
zad8(u_1,u_2, 3.6, k_2, m_1, m_2, a, omega, [0;1;1;0]);
xs2png(3, "img/8-1-zadane-xy.png")
xs2png(4, "img/8-1-zadane-phase-12.png")
xs2png(5, "img/8-1-zadane-phase-34.png")
close();close();close();


zad8(6,u_2, k_1, k_2, m_1, m_2, a, omega, [1;1;0;0]);
zad8(6.6,u_2, k_1, k_2, m_1, m_2, a, omega, [1;1;0;0]);
zad8(5.4,u_2, k_1, k_2, m_1, m_2, a, omega, [1;1;0;0]);
xs2png(3, "img/8-2-zadane-xy.png")
xs2png(4, "img/8-2-zadane-phase-12.png")
xs2png(5, "img/8-2-zadane-phase-34.png")
close();close();close();





