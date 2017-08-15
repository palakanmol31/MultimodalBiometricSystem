function roc(genuine_cs,imposter_cs)
score=[genuine_cs imposter_cs];
sc=max(max(score));
genuine_cs=genuine_cs./sc;
imposter_cs=imposter_cs./sc;

%Error Rates

[FRR_cs FAR_cs]=cal_error_rates(genuine_cs,imposter_cs);


GAR_cs=100-FRR_cs;

figure,semilogx(FAR_cs,GAR_cs);
xlabel('FAR');
ylabel('GAR');
title('roc using cosine similarity');
end



    
