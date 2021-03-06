function decision
clc;
pathname= uigetdir('','Select the group');
filename=dir(pathname);
filename_size=size(filename,1);
ori=strsplit(pathname,'Group');
in=cell2mat(ori(1,2));
z=strsplit(in,'_');
e=cell2mat(z(1));
input_user=str2num(e)
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
rule_and=s0&&s1;
rule_or=s0||s1;
end