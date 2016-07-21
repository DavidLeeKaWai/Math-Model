m = size(record,1)
for i = 1:m
    if(record(i,3)>23&&record(i,4)>2&&record(i,4)<3)
        fprintf('%f %f %f %f\n',record(i,1),record(i,2),record(i,3),record(i,4));
end
end