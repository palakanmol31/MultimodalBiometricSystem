function [matrix FAR_cs FRR_cs]=error_min(genuine_cs,imposter_cs)
score=[genuine_cs imposter_cs];
sc=max(max(score));
genuine_cs=genuine_cs./sc;
imposter_cs=imposter_cs./sc;

%Error Rates

[FRR_cs FAR_cs]=cal_error_rates1(genuine_cs,imposter_cs);
i=1;j=1;
for cfa = 0.1:0.1:1.9
for thres= 1:numel(FRR_cs)
    error(i,thres)=(cfa*FAR_cs(thres))+((2-cfa)*FRR_cs(thres));
   matrix(j,:)=[error(i,thres) cfa FAR_cs(thres) 2-cfa FRR_cs(thres)];
    j=j+1;
end
i=i+1;
end
end


    
