%%%%%%Q3%%%%%%%
%%%%%simulation of M/M/1 model %%%%%%%%%
%Q3(a)%
%assuming load as said in the question, assumption made in a manner such
%that system is stable
%the three fields in the input of the function are lambda mean and endtime 
lambda=5;
[N,T]=Q3(5,10,100);
disp('Time each customer spends in the system')
b=N./lambda
%%%%average time each member spends in the system is equal to
%%%%mean(customers)/lambda
a=mean(N);
T1=a/lambda;
disp('time spent by each customers')
disp(T1)


%%%%Q3(b)%%%%%
%%given lambda = 5 or 10 based on load values%%%%
l1=5;
l2=10;
l=[5 20]
load=[0.25,0.5,0.7,0.9,1,1.1];
ET1=[];%empty vector to store values of time spent by customers in the system
ET2=[];
for i=1:length(load)
    m1=l1/load(i);%formula for finding mu
    [N,T]=Q3(l1,m1,100);
    mean1=mean(N);
    T2=mean1/l1;
    ET1=[ET1,T2];%stores values for average time spent by customers in each iteration
    
end
disp(ET1)
disp('above is the response time for lambda=5')
%figure
%plot(ET1,l1)

for i=1:length(load)
    m2=l2/load(i);%formula for finding mu
    [N,T]=Q3(l2,m2,100);
    mean1=mean(N);
    T3=mean1/l2;
    ET2=[ET2,T3];%stores values for average time spent by customers in each iteration
    
end
disp(ET2)
disp('above is the response time for lambda=10')
figure
bar(ET2)
figure
bar(ET1)