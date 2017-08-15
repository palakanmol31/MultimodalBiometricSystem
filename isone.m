function s = isone( image )

f=0;
for i= 1 : 1 : 15
    for j= 1 :1 : 15
        if (image(i,j)==1)
            f=1;
            break;
        end
    end
end
if (f==1)
s=1;
else
    s=0;
end
end

