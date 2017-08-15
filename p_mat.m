function score=p_mat(train,test)
train=reshape(train,1,100);
test=reshape(test,1,100);
x=dot(train,test);
y=sqrt(sum(train)*sum(test));
score=x/y;
end