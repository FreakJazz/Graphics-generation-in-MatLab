%% Graphics-generation-in-MatLab
% Genetate differents graphics in order to use from systems
close all 
clear all
clc
% menu ghaphics
options = menu('GRAPHICS MODE', 'SYSTEM RESPONSE', 'GRAPHICS GENERATE');
if options == 1
    choice = menu('CHOOSE THE DESIRED GRAPHICS', 'STEP RESPONSE', 'UNDER DAMPERED', 'OVERDAMPERED', 'CRITICALLY DAMPERED', 'PERFORM ALL GRAPHICS');
    % Step Graphics
    if choice==1
        t=0:0.1:10;
        x1=ones(size(t));
        x2=-ones(1,41);
        x3=zeros(1,60);
        x4=[x2 x3];
        x=x1+x4;
        plot(t,x)
        title('STEP RESPONSE')
    %     break;
    end
    % graphics 2
    % UNDER DAMPERED SYSTEM
    if (choice==2)
        s=tf('s')
        gr=exp(-4*s)
        num=[1 4]
        den=[1  3  5 4]
        g=tf(num,den)
        f=(gr*g)
        step(f,'r')
        title('UNDERDAMPERED SYSTEM')
    end
    % OVERDAMPERED
    if choice==3
        num1=[2]
        den1=[1 5 2]
        s=tf('s');
        g1=tf([num1],[den1]);
        gr=exp(-4*s);
        g2=g1*gr;
        step(g2,'g')
        title('OVERDAMPERED SYSTEM')
    end

    % CRITICALLY DAMPERED
    if choice==4
        num2=[1];
        den2=[1 4 1]
        s=tf('s');
        gr=exp(-4*s);
        g3=tf([num2],[den2])
        g4=g3*gr;
        step(g4)
        title('CRITICALLY DAMPERED SYSTEM')
    end

    % ALL GRAPHICS
    if choice==5
        % STEP RESPONSE
        t=0:0.1:10;
        x1=ones(size(t));
        x2=-ones(1,41);
        x3=zeros(1,60);
        x4=[x2 x3];
        x=x1+x4;
        plot(t,x)
        hold on
        % UNDER DAMPERED SYSTEM
        s=tf('s');
        gr=exp(-4*s);
        num=[1 4];
        den=[1  3  5 4];
        g=tf(num,den);
        f=(gr*g);
        step(f,'r')
        hold on
        % OVERDAMPERED
        num1=[2];
        den1=[1 5 2];
        s=tf('s');
        g1=tf([num1],[den1]);
        gr=exp(-4*s);
        g2=g1*gr;
        step(g2,'g')
        hold on
        % CRITICALLY DAMPERED SYSTEM
        num2=[1];
        den2=[1 4 1];
        s=tf('s');
        gr=exp(-4*s);
        g3=tf([num2],[den2]);
        g4=g3*gr;
        step(g4)
        hold on  
        title('SYSTEMS RESPONSE')
        legend('Step response', 'Underdamped System', 'Overdamped System', 'Critically Damped System')
    end
end

if options == 2
    choice1 = menu('CHOOSE THE SHAPE', 'CIRCLE', 'PENTAGON','STRAIGHT WITH SINUSOID', 'SPIRAL', 'ALL THE GRAPHS');
    if choice1 == 1
        %%CIRCLE
        t=0:0.01:100;
        tita=t.*(2*pi/100);
        x=2*cos(tita)+5;
        x1=2*sin(tita)+5;
        y=x+x1;
        plot(x,x1);axis([0 10 0 10]);
        title('Circle')
    end
    if choice1 == 2
        %%pentagon
        t=0:100/5:100;
        tita=(t.*(2*pi/(100)) +pi/2);
        %tita=0+pi/2:2*pi/5:2*pi +pi/2;
        x=2*cos(tita)+5;
        x1=2*sin(tita)+5;
        plot(x,x1);axis([0 10 0 10]);
        title('Pentagon')
    end
    if choice1 == 3
        %%Straight with sinusoid
        t=0:1:100;
        t1=t;
        y1=t+10*sin(t.*(2*pi/25));
        plot(t1,y1,t1,t)
        title('Straight with sinusoid')
    end
    if choice1 == 4
    %%Spiral
    %r(tita)=a+b*tita
    t=0:0.01:100;
    tita=(t.*(2*pi/(10)));
    x=(tita./10).*cos(tita)+8;
    x1=(tita./10).*sin(tita)+8;
    plot(x,x1);axis([0 15 0 15]);
    title('Spiral')
    end
    
    if choice1 == 5
        %%CIRCLE
        t=0:0.01:100;
        tita=t.*(2*pi/100);
        x=2*cos(tita)+5;
        x1=2*sin(tita)+5;
        y=x+x1;
        plot(x,x1);axis([0 10 0 10]);
        hold on;
 
        %%pentagon
        t=0:100/5:100;
        tita=(t.*(2*pi/(100)) +pi/2);
        %tita=0+pi/2:2*pi/5:2*pi +pi/2;
        x=2*cos(tita)+5;
        x1=2*sin(tita)+5;
        plot(x,x1);axis([0 10 0 10]);
        hold on;
        
        %%Straight with sinusoid
        t=0:1:100;
        t1=t;
        y1=t+10*sin(t.*(2*pi/25));
        plot(t1,y1,t1,t)
        hold on;
        
        %%Spiral
        %r(tita)=a+b*tita
        t=0:0.01:100;
        tita=(t.*(2*pi/(10)));
        x=(tita./10).*cos(tita)+8;
        x1=(tita./10).*sin(tita)+8;
        plot(x,x1);axis([0 15 0 15]);
        hold on;
        legend('CHOOSE THE SHAPE', 'CIRCLE', 'PENTAGON','STRAIGHT WITH SINUSOID', 'SPIRAL', 'ALL THE GRAPHS')
    end

end