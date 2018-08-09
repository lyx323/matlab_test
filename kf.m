data = load('F:\svn-workstation\artoolkit\t.txt')  
N = length(data);

K = zeros(N,1);
X = zeros(N,1);
P = zeros(N,1);
Q = 1e-6;
R = 4e-4;
X(1) = -9.774580 ;
P(1) = 1;

for i = 2:N
    K(i) = P(i-1) / (P(i-1) + R);
    X(i) = X(i-1) + K(i) * (data(i) - X(i-1));
    P(i) = P(i-1) - K(i) * P(i-1) + Q;
end

plot(data);
hold on
plot(X);