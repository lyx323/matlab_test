% Generate random data from a uniform distribution
% and calculate the mean. Plot the data and the mean.
 
date=load('F:\svn-workstation\artoolkit\translate1.txt')  
x1=date(:,1); 
vx=var(x1);
y1=date(:,2); 
vy=var(y1);
z1=date(:,3);
vz=var(z1);
x2=date(:,4);
vx2=var(x2);
y2=date(:,5);
vy2=var(y2);
z2=date(:,6);
vz2=var(z2);


subplot(3,1,1); 
plot(x1,'r:') ,xlabel('t');ylabel('x');  
hold on
plot(x2);
%axis([0 80 0 30]);  

subplot(3,1,2); 
plot(y1,'r:') ,xlabel('t');ylabel('y');
hold on 
plot(y2,'b');

subplot(3,1,3); 
plot(z1,'r:') ,xlabel('t');ylabel('z');
hold on
plot(z2)

fprintf('var x1: %d\n',vx);
fprintf('var x2: %d\n',vx2);
fprintf('var y1: %d\n',vy);
fprintf('var y2: %d\n',vy2);
fprintf('var z1: %d\n',vz);
fprintf('var z2: %d\n',vz2);