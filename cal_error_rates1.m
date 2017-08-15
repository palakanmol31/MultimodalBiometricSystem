function [FRR, FAR] = cal_error_rates1(gen,imp)
FRR=[];
FAR=[];
count=1;
for thr=0:0.01:1
    count1=0;
    for i=1:length(gen)
        if(gen(i)>thr)
            count1=count1+1;
        end
    end
    FRR(count)=(count1/length(gen));
    
    count2=0;
    for j=1:length(imp)
        if(imp(j)<thr)
            count2=count2+1;
        end
    end
    FAR(count)=(count2/length(imp));
    count=count+1;
end