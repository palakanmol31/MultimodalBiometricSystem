function norm_mat=normalise(mat)
new_min=0;
new_max=1;
minimum=min(mat);
maximum=max(mat);
denom=maximum-minimum;
new_diff=new_max-new_min;
norm_mat=zeros(1,size(mat,2));
for i=1:size(mat,2)
    norm_mat(1,i)=(((mat(1,i)-minimum)*new_diff)/denom)+new_min;
end
end

