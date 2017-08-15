function combined()
clc;
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
x=finger_score(p);
palmprint_score(p)=p_mat(p_train,p_test);
y=palmprint_score(p);
tscore1(p)=max(x,y); %min-max
tscore2(p)=x*y; %probilistic 
tscore3(p)=(x*y)/(x+y-(x*y)); % hamacher
tscore4(p)=1-((((1-x)^3) + ((1-y)^3) - (((1-x)^3)*((1-y)^3)))^0.33);  %sch & sklar
frank=1+((((10^x)-1)*((10^y)-1))/9);
tscore5(p)= log10(frank);%frank
end
end
j=1;
for i=1:20
t_1(i)=(tscore1(j)+tscore1(j+1)+tscore1(j+2))/3 ; 
t_2(i)=(tscore2(j)+tscore2(j+1)+tscore2(j+2))/3 ;
t_3(i)=(tscore3(j)+tscore3(j+1)+tscore3(j+2))/3 ;
t_4(i)=(tscore4(j)+tscore4(j+1)+tscore4(j+2))/3 ;
t_5(i)=(tscore5(j)+tscore5(j+1)+tscore5(j+2))/3 ;
j=j+3;
end
input_user=input_user
t1=t_1;
[tnorm_1 user]=max(t1)
if user==input_user
display('Genuine');
else
display('Imposter');
end
t2=t_2;
[tnorm_2 user]=max(t2)
if user==input_user
display('Genuine');
else
display('Imposter');
end
t3=t_3;
[tnorm_3 user]=max(t3)
if user==input_user
display('Genuine');
else
display('Imposter');
end
t4=t_4;
[tnorm_4 user]=max(t4)
if user==input_user
display('Genuine');
else
display('Imposter');
end
t5=t_5;
[tnorm_4 user]=max(t5)
if user==input_user
display('Genuine');
else
display('Imposter');
end
end