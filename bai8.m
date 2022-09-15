%syms l1 l2 l3 l4 l5 l6 t1 t2 t3 t4 t5  
%R1=[cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
%T1=[1 0 0 0; 0 1 0 l1; 0 0 1 0; 0 0 0 1];
%T2=[1 0 0 0; 0 1 0 0; 0 0 1 l2; 0 0 0 1];
%R2=[1 0 0 0; 0 cos(t2) -sin(t2) 0; 0 sin(t2) cos(t2) 0; 0 0 0 1];
%T3=[1 0 0 0; 0 1 0 0; 0 0 1 l3; 0 0 0 1];
%R3=[1 0 0 0; 0 cos(t3) -sin(t3) 0; 0 cos(t3) sin(t3) 0; 0 0 0 1];
%T4=[1 0 0 0; 0 1 0 l4; 0 0 1 0; 0 0 0 1];
%R4=[1 0 0 0; 0 cos(t4) -sin(t4) 0 ; 0 sin(t4) cos(t4) 0; 0 0 0 1];
%T5=[1 0 0 0; 0 1 0 l5; 0 0 1 0; 0 0 0 1];
%T6=[1 0 0 0; 0 1 0 0; 0 0 1 l6; 0 0 0 1];
%R5=[cos(t5) -sin(t5) 0 0; sin(t5) cos(t5) 0 0; 0 0 1 0; 0 0 0 1];
%P=[0;0;0;1];

simplify(R1*T1*T2*R2*T3*R3*T4*R4*T5*T6*R5*P)


syms t1 t2 t3 t4
l1=5; l2=20; l3=40; l4= 50; l5=10; l6=30;

for t1=0:0.1:3.14/2
    for t2=0:0.1:3.14/2
        for t3=0:0.1:3.14/2
            for t4=0:0.1:3.14/2
                x=l4*(cos(t3)*sin(t1)*sin(t2) - cos(t2)*cos(t3)*sin(t1)) + l5*(cos(t4)*(cos(t3)*sin(t1)*sin(t2) - cos(t2)*cos(t3)*sin(t1)) + sin(t4)*(cos(t2)*sin(t1)*sin(t3) + sin(t1)*sin(t2)*sin(t3))) - l6*(sin(t4)*(cos(t3)*sin(t1)*sin(t2) - cos(t2)*cos(t3)*sin(t1)) - cos(t4)*(cos(t2)*sin(t1)*sin(t3) + sin(t1)*sin(t2)*sin(t3))) - l1*sin(t1) + l3*sin(t1)*sin(t2);
                y=l4*(cos(t1)*cos(t2)*cos(t3) - cos(t1)*cos(t3)*sin(t2)) + l5*(cos(t4)*(cos(t1)*cos(t2)*cos(t3) - cos(t1)*cos(t3)*sin(t2)) - sin(t4)*(cos(t1)*sin(t2)*sin(t3) + cos(t1)*cos(t2)*sin(t3))) - l6*(sin(t4)*(cos(t1)*cos(t2)*cos(t3) - cos(t1)*cos(t3)*sin(t2)) + cos(t4)*(cos(t1)*sin(t2)*sin(t3) + cos(t1)*cos(t2)*sin(t3))) + l1*cos(t1) - l3*cos(t1)*sin(t2);
                z=  l2 + l4*(cos(t2)*cos(t3) + cos(t3)*sin(t2)) + l3*cos(t2) + l5*(cos(t4)*(cos(t2)*cos(t3) + cos(t3)*sin(t2)) + sin(t4)*(cos(t2)*sin(t3) - sin(t2)*sin(t3))) - l6*(sin(t4)*(cos(t2)*cos(t3) + cos(t3)*sin(t2)) - cos(t4)*(cos(t2)*sin(t3) - sin(t2)*sin(t3)));
                plot3(x,y,z,'*');
                grid on;
                hold on;
                xlabel ('x'); ylabel('y'); zlabel('z'); title('bai8');
            end
        end
    end
end



