function pso 
best_rule=dlmread('best_optimal_value.txt'); 
pFAR =dlmread('pFAR.txt');
pFRR =dlmread('pFRR.txt');
fFAR =dlmread('fFAR.txt');
fFRR=dlmread('fFRR.txt');
pathname= uigetdir('','Select the group');
filename=dir(pathname);
filename_size=size(filename,1);
ori=strsplit(pathname,'Group');
in=cell2mat(ori(1,2));
z=strsplit(in,'_');
e=cell2mat(z(1));
input_user=str2num(e);
for i=3:filename_size
    [path name ext]=fileparts(filename(i).name);
    if strcmp(ext,'.txt')==1
        if strcmp(name(1),'t')==1
            p_test=dlmread(strcat(pathname,'\',name,ext)) ;
        elseif strcmp(name(1),'f')==1
            f_test=dlmread(strcat(pathname,'\',name,ext));
        elseif strcmp(name(1),'s')==1
            match_mat=dlmread(strcat(pathname,'\',name,ext));
        end
    else
        continue ;
    end
    
end
train_pathname='F:\combined\Training';
p=0;
for l=1:20
    for k=1:3
        p=p+1;
        t_path=strcat(train_pathname,'\Group',int2str(l),'_',int2str(k));
        filename=dir(t_path);
        filename_size=size(filename,1);
        for i=3:filename_size
            [path name ext]=fileparts(filename(i).name);
            if strcmp(ext,'.txt')==1
                if strcmp(name(1),'t')==1
                    p_train=dlmread(strcat(t_path,'\',name,ext));
                elseif strcmp(name(1),'f')==1
                    f_train=dlmread(strcat(t_path,'\',name,ext));
                end
            else
                continue ;
            end
        end
        finger_score(p)=match_mat(p);
        
        palmprint_score(p)=p_mat(p_train,p_test);
        
    end
end
j=1;
for i=1:20
    p_score(i)=(palmprint_score(j)+palmprint_score(j+1)+palmprint_score(j+2))/3 ;
    f_score(i)=(finger_score(j)+finger_score(j+1)+finger_score(j+2))/3 ;
   
    j=j+3;
end


[p_1 p_user]=max(p_score);
if p_user==input_user
    s0=1;
else
    s0=0;
end
[f_1 f_user]=max(f_score);
if f_user==input_user
    s1=1;
else
    s1=0;
end
answer=[];
for x=1:16
    val(x,1)=s0*log10((1-pFRR(best_rule(x,6)))/pFAR(best_rule(x,6)))+(1-s0)*log10(pFRR(best_rule(x,6))/1-pFAR(best_rule(x,6)))+s1*log10((1-fFRR(best_rule(x,6)))/fFAR(best_rule(x,6)))+(1-s1)*log10(fFRR(best_rule(x,6))/1-fFAR(best_rule(x,6)));
    threshold(x,1) = log10(best_rule(x,2)/2-best_rule(x,2)); 
    if(val(x,1)>threshold(x,1))
        answer=[answer x];
    end
end
clc;
if isempty(answer)
    display('User is imposter');
else
    display('User is genuine with fusion rules and optimum values as : ');
    display('     RULE       ERROR       CFA      FAR       FRR')
    for q=1:size(answer,2)
       a(q,:)=[answer(q)  best_rule(answer(q),1)  best_rule(answer(q),2)  best_rule(answer(q),3)  best_rule(answer(q),5) ];
    end
    display(a);
end
end