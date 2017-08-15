function t_score=genuine2
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
        train_pathname='F:\combined\Training';
            for k=1:3
                t_path=strcat(train_pathname,'\Group',int2str(e),'_',int2str(k));
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
            end
            fingerprint_score=[match_mat(p) match_mat(p+1) match_mat(p+2)];
            p_score=[p_score palmprint_score];
            f_score=[f_score fingerprint_score];
    end
        for q=1:6
            t_score(e,q)=p_score(1,q)*f_score(1,q);
        end
        p=p+3;
end
end
    