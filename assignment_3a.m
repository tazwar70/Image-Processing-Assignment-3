% Assignment 3a

% for the perspective camera
% 3d point (X,Y,Z) = 2D point (x = f*X/Z, y = f*Y/Z)

% points given
% Center
center = [0 0 0];
% Focal Length
f =  1;

% for object O

p1 = [-1 0 2];
p2 = [1 0 5];
p3 = [0 1 4];
p4 = [0 -1 3];

O = [p1' p2' p3' p4'];
z = O(3,:);
X_2d = f*(O(1,:)./z);
Y_2d = f*(O(2,:)./z);

O_2d = [X_2d;Y_2d];

% Labels
m = size(O(1,:));
labels = split(int2str(1:m(2)));

% Plot
area(X_2d,Y_2d) % Fill plot
hold on
plot(X_2d,Y_2d,'o','LineWidth',9) % Plot
hold off
text(X_2d,Y_2d,labels) % Text
title('Perspective Camera')