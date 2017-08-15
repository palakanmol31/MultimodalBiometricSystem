function r= borda_count(p,f)
for i=1:20
    fused_score(i)=(p(i)+f(i))/2;
end
[~,~,rank]=unique(fused_score);
r=transpose(rank);
end

