function ambm
clc;
[genuine_palm genuine_fin]=genuine_ambm;
[imposter_palm imposter_fin]=imposter_ambm;
[e pFAR pFRR]=error_min(genuine_palm,imposter_palm);
dlmwrite('error_palm.txt',e);
[f fFAR fFRR] =error_min(genuine_fin,imposter_fin);
dlmwrite('error_finger.txt',f);
%% Combination 
%% f1 
best_optimal_value=[];
s1=[0;0;1;1]; s2=[0;1;0;1];
f=[0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1;0,0,0,0,1,1,1,1,0,0,0,0,1,1,1,1;0,0,1,1,0,0,1,1,0,0,1,1,0,0,1,1;0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1];
 for i=1:16
    for j=1:size(pFAR,2)
     FAR(1,j)=(f(1,i)*(1-pFAR(1,j))*(1-fFAR(1,j)))+(f(2,i)*(1-pFAR(1,j))*(fFAR(1,j)))+(f(3,i)*(pFAR(1,j))*(1-fFAR(1,j)))+(f(4,i)*(pFAR(1,j))*(fFAR(1,j)));
     FRR(1,j)=((1-f(1,i))*(pFRR(1,j))*(fFRR(1,j)))+((1-f(2,i))*(pFRR(1,j))*(1-fFRR(1,j)))+((1-f(3,i))*(1-pFRR(1,j))*(fFRR(1,j)))+((1-f(4,i))*(1-pFRR(1,j))*(1-fFRR(1,j)));
    end
    k=1;l=1;
for cfa = 0.1:0.1:1.9
for thres= 1:numel(FRR)
    error(k,thres)=(cfa*FAR(1,thres))+((2-cfa)*FRR(1,thres));
   matrix(l,:)=[error(i,thres) cfa FAR(1,thres) 2-cfa FRR(1,thres) thres];
    l=l+1;
end
k=k+1;
end
dlmwrite(strcat('fusion_rule_',num2str(i),'.txt'),matrix);
[er in]=min(matrix(:,1));
[row, col] = ind2sub(size(matrix), in); 
best_optimal_value(i,:)=[matrix(row,col) matrix(row,col+1) matrix(row,col+2) matrix(row,col+3) matrix(row,col+4) matrix(row,col+5)];
 end
 dlmwrite('best_optimal_value.txt',best_optimal_value);
 dlmwrite('pFAR.txt',pFAR);
 dlmwrite('pFRR.txt',pFRR);
 dlmwrite('fFAR.txt',fFAR);
 dlmwrite('fFRR.txt',fFRR);
end    