m = size(record1,1);
for i = 1:m
    if(record1(i,3)>21.8&&record1(i,4)>2&&record1(i,4)<3)
        fprintf('%f %f %f %f\n',record1(i,1),record1(i,2),record1(i,3),record1(i,4));
    end
end
%v0x       v0y       x         y
%59.000000 9.000000 17.733872 2.524029

%51.500000 30.500000 23.221016 2.123648