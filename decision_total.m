function combined_total
diary Status_decision.txt
pathname1= 'F:\combined\Testing';
%fid= fopen('output.txt','wt');
for e=1:20
    for f=4:5
        pathname=strcat(pathname1,'\Group',num2str(e),'_',num2str(f),'\')
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
            t_1(i)=(tscore1(j)+tscore1(j+1)+tscore1(j+2))/3 ;
            t_2(i)=(tscore2(j)+tscore2(j+1)+tscore2(j+2))/3 ;
            t_3(i)=(tscore3(j)+tscore3(j+1)+tscore3(j+2))/3 ;
            t_4(i)=(tscore4(j)+tscore4(j+1)+tscore4(j+2))/3 ;
            t_5(i)=(tscore5(j)+tscore5(j+1)+tscore5(j+2))/3 ;
            j=j+3;
        end
        t1=t_1
        [tnorm user]=max(t1)
        if e==user
            display('Genuine')
        else
            display('Imposter')
        end
        t2=t_2
        [tnorm user]=max(t2)
        if e==user
            display('Genuine')
        else
            display('Imposter')
        end
        t3=t_3
        [tnorm user]=max(t3)
        if e==user
            display('Genuine')
        else
            display('Imposter')
        end
        t4=t_4
        [tnorm user]=max(t4)
        if e==user
            display('Genuine')
        else
            display('Imposter')
        end
        t5=t_5
        [tnorm user]=max(t5)
        if e==user
            display('Genuine')
        else
            display('Imposter')
        end
    end
end
%fclose(fid);
diary off
end