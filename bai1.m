syms t4 t5 t6 
l1=60; l2=30; l3=45; l4=20; l5=30;

for t4=0:0.1:3.14/2
    for t5=0:0.1:3.14/2
        for t6=0:0.1:3.14/2
           x=l3 + l4 - l5*cos(t5)*sin(t6);
           y=l2 + l5*(cos(t4)*cos(t6) + sin(t4)*sin(t5)*sin(t6));
           z=l1 + l5*(cos(t6)*sin(t4) - cos(t4)*sin(t5)*sin(t6));
           plot3(x,y,z,'*');
           xlabel('x'); ylabel('y'); zlabel('z'); title('Bai_1');
           hold on;
        end
    end
end


