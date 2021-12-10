clear;clc;clf;

/*
        Zadanie 4
 */

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
        phi = 1
 */
 
function zad7(u, k, m, a, phi)
    function dy=fun(t, y)
        dy(1)=y(2);
        dy(2)=-u/m*y(2)-k/m*y(1) + a*sin(phi*t);
    endfunction
    
    t0=0.0;y0=[1;0];
    T=0.0:0.1:80;
    y=ode(y0,t0,T,fun,list(fun));
    scf(3);
    plot(T,y(1,:)), xgrid();
    scf(4);
    plot(y(1,:),y(2,:)); xgrid();
endfunction

function zad7red(u, k, m, a, phi)
    function dy=fun(t, y)
        dy(1)=y(2);
        dy(2)=-u/m*y(2)-k/m*y(1) + a*sin(phi*t);
    endfunction
    
    t0=0.0;y0=[1;0];
    T=0.0:0.1:80;
    y=ode(y0,t0,T,fun,list(fun));
    scf(3);
    plot(T,y(1,:), 'r'); xgrid();
    scf(4);
    plot(y(1,:),y(2,:), 'r'); xgrid();
endfunction

zad7(6, 4, 1, 2, 1)

zad7(4, 2, 1, 2, 1) // k_1 i k_2 są różne, rzeczywiste

zad7(1, 4, 1, 2, 1) // k_1 i k_2 są zespolone

zad7(1, 0, 1, 2, 1) // k1 i k_2 są równe

for phi=0.1:0.2:2
    zad7(6, 4, 1, 2, phi)
end

zad7red(6, 4, 1, 2, 0.01)


m_1 = 1;
m_2 = 5;
u_1 = 6;
u_2 = 1;
k_1 = 4;
k_2 = 1;
function dy=fun(t, y)
    // y(1) = x_1
    // y(2) = v_1
    // y(3) = x_2
    // y(4) = v_2
    dy(1)=y(2); // 
    dy(2)=k_2/m_1*y(3)+u_2/m_1*y(4)-k_2/m_1*y(1)-u_2/m_1*y(2)-k_1/m_1*y(1)-u_1/m_1*y(2)
    dy(3)=y(4)
    dy(4)=-k_2/m_2*y(3)-u_2/m_2*y(4)+k_2/m_1*y(1)+u_2/m_2*y(2)
endfunction

t0=0.0;y0=[1;0;0;0];
T=0.0:0.5:100;
y=ode(y0,t0,T,fun,list(fun));
scf(3);
plot(T,y); xgrid();
scf(4);
plot(y(1,:),y(2,:)); xgrid();







