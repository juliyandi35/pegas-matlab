% Parameters
m1 = 1;          % mass of the object 1 (kg)
k1 = 10;         % spring constant (N/m)
b = 0.1;        % damping coefficient (N.s/m)
m2 = 2;         % mass of the object 2 (kg)
k2 = 20;        % spring constant 2 (N/m)
m3 = 0.5;       % mass of the object 3 (kg)
k3 = 5;         % spring constant 3 (N/m)
% Initial conditions
x0 = 3;       % initial position (m)
v0 = 1;         % initial velocity (m/s)

% Time vector
tspan = [0 10]; % simulation time span (s)
dt = 0.01;      % time step (s)
t = tspan(1):dt:tspan(2);

% Simulation Spring 1
x1 = zeros(size(t)); % position
v = zeros(size(t)); % velocity
x1(1) = x0;
v(1) = v0;
for i = 2:length(t)
    F = -k1*x1(i-1) - b*v(i-1); % force
    a = F/m1;                  % acceleration
    v(i) = v(i-1) + a*dt;     % velocity
    x1(i) = x1(i-1) + v(i)*dt;  % position
end

% Simulation Spring 2
x2 = zeros(size(t)); % position
v = zeros(size(t)); % velocity
x2(1) = x0;
v(1) = v0;
for i = 2:length(t)
    F = -k2*x2(i-1) - b*v(i-1); % force
    a = F/m2;                  % acceleration
    v(i) = v(i-1) + a*dt;     % velocity
    x2(i) = x2(i-1) + v(i)*dt;  % position
end

% Simulation Spring 3
x3 = zeros(size(t)); % position
v = zeros(size(t)); % velocity
x3(1) = x0;
v(1) = v0;
for i = 2:length(t)
    F = -k3*x3(i-1) - b*v(i-1); % force
    a = F/m3;                  % acceleration
    v(i) = v(i-1) + a*dt;     % velocity
    x3(i) = x3(i-1) + v(i)*dt;  % position
end

% Plot results
plot(t, x1);
hold on
plot(t,x2);
hold on
plot(t,x3);
legend('Pegas dengan m=1 dan k=10','Pegas dengan m=2 dan k=20','Pegas dengan m=0.5 dan k=5')
xlabel('Time (s)');
ylabel('Position (m)');
title('Spring-Mass System');
