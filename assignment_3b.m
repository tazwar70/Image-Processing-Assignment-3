% Assignment 3b

% for weak perspective camera
% 3d point (X,Y,Z) = 2D point (x = X/Z_0, y = Y/_0Z)

% points given
% Center
center = [0 0 0];
% Focal Length
f = 1;

% for object O
A = [-1 0 2];
B = [1 0 5];
C = [0 1 4];
D = [0 -1 3];

O = [A' B' C' D'];
X_3d = O(1,:);
Y_3d = O(2,:);
Z_0 = mean(O(3,:));


O_2d = [X_3d./Z_0;Y_3d./Z_0];
x_2d = f*O_2d(1,:);
y_2d = f*O_2d(2,:);

% Labels
m = size(O(1,:));
labels = split(int2str(1:m(2)));

% Plot
area(x_2d,y_2d) % Fill plot
hold on
plot(x_2d,y_2d,'o','LineWidth',9) % Plot
hold off
text(x_2d,y_2d,labels) % Text
title('Weak Perspective Camera')