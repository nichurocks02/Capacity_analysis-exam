%%%%%%%% M Nishkal Gupta%%%%%%%%%%
%%%%%%%Q1(d)%%%%%%%%%%%
L=[]%empty vector to store L values for each iterations
A=[]%empty vector to store the load values for each iteration
lambda=[1,2,3,4,5,10,20,50,100]
mu=[2,3,5,6,8,20,30,70,120]
Palpha=0.05%probability for alpha is same for all casses
for i=1:9
    load=lambda(i)/mu(i);%formula for load
    l=(log(Palpha/(1-Palpha)*load)/log(load))-1;%formula for finding L
    L=[L,l];
    A=[A,load];
end
disp('minimum L value required i.e queue length, we can floor the values below to get proper integer values')
disp(L)
disp('load values')
disp(A)

%%%%%Q1(e)%%%%%%%
%plotting L w.r.t load values A%%%%%%
figure
plot(L,A,"*",'LineWidth',1)
xlabel('load','FontSize',12,'FontWeight','bold','Color','k'),
ylabel('Queue Length','FontSize',12,'FontWeight','bold','Color','k')


