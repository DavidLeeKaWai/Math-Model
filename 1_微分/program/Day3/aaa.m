

clear;
vx = [];
vy = [];
X=[];
Y=[];
record1 = [];
for i = 40:0.1:60
    for j = 10:0.1:40
        [t,U] = ode45(@AirWall,[0:0.01:4],[0;i;0;j]);
        s = size(U);
        for row = 1:s(1,1)
            x=U(row,1);
            y=U(row,3);
            if(i^2+j^2<=60^2&&y>0&&x>0)
                record1=[record1;i,j,x,y;];
                
                %fprintf('v0x=%f v0y=%f X=%f Y=%f\n',i,j,x,y);
            end
        end
    end
end
