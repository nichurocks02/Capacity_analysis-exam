clc;
clear all;
close all;
L=[];
B=[];
C=[];
l1=[1 2 5 10 20];%arrival rate new
l2=[2 4 10 15 20];%arrival rate VIP
mu=[1 10 15 20 30];
for i =1:length(l1)
    e=1/mu(i);%exponential service times
    load=(l1(i)+l2(i))*e;%formula for finding out load
    load2=l2(i)*e;
    L=[L,load];%storing the load values of server1 for each case
    B=[B,load2];%storing the load values on server 2 for each case
end
%%%%%%Q5(b)%%%%%
disp('load on server1')
disp(L)
disp('load on server2')
disp(B)
%%%% from the above test we can find that load on server 2 is less and
%%%% offocurse because it only serves VIP customers so less population 
%%%%%%Q5(c)%%%%%%%
for kk =1:max(L)+1
    count (kk, 1) = kk - 1;
    count (kk, 2) = sum(( kk - 1) == L ); 
end
figure
bar(L)%plotting load on server 1
figure 
bar(B)%plotting load on server2

