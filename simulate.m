% Generate random data from a uniform distribution
% and calculate the mean. Plot the data and the mean.cl
clear all;
date = load('F:\svn-workstation\artoolkit\compare.txt')  
x=date(:,1);
default=date(:,4);

sampleRate = 30;
cutoffFreq = 10;

dt = 1.0 / sampleRate;
RC = 1.0 / cutoffFreq;
alpha = dt / (dt + RC);
%y(1)=alpha*x(1);
y(1)=-9.783362;
for i=2:560
    y(i) = (1-alpha)*y(i-1)+alpha*x(i);
end
plot(x,':');
hold on
plot(y,'r');
hold on 
plot(default,'g')
legend('cur','new','dft')

vx=var(x);
vy=var(y);
vd=var(default);
fprintf('x: %d, y: %d, d: %d\n',vx,vy,vd);
fprintf('alpha: %d\n',alpha);
