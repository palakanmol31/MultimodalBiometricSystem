function r=logistic_reg(p,f)
w=0.15*p+0.5*f;
[~,~,rank]=unique(w);
r=transpose(rank);
end