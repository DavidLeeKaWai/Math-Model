
[t,U] = ode45(@LorenzFunc,[0 30],[3,2,1]);
figure(1); 
plot(U(:,1),U(:,2));
figure(2); 
plot(U(:,1),U(:,3));
figure(3); 
plot3(U(:,1),U(:,2),U(:,3));
U