function t_score=imposter4
pathname1= 'F:\combined\Testing';
p=1;
for e=1:20
     p_score=[];
        f_score=[];
    for f=4:5
        pathname=strcat(pathname1,'\Group',num2str(e),'_',num2str(f),'\');
        filename=dir(pathname);
        filename_size=size(filename,1);
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
        s=[];
        train_pathname='F:\combined\Training';
        for r=1:20
            if(r~=e)
            for k=1:3
                t_path=strcat(train_pathname,'\Group',int2str(r),'_',int2str(k));
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
                palmprint_score(1,k)=p_mat(p_train,p_test);
                p_score=[p_score palmprint_score];
                end
            end  
        end
            s=reshape(match_mat,1,size(match_mat,1));
            fingerprint_score=[s(1,1:p-1) s(1,p+3:end)];
            f_score=[f_score fingerprint_score];
    end
        for q=1:114
             x=p_score(1,q);
            y=f_score(1,q);
            t_score(e,q)=((((1-x)^3) + ((1-y)^3) - (((1-x)^3)*((1-y)^3)))^0.33);
        end
        p=p+3;
end
end
    