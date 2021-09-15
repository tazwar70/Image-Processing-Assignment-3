% Angle to be Rotated
theta = deg2rad(45);

% Rotation Matrix
R = [cos(theta) -sin(theta) 0;sin(theta) cos(theta) 0;0 0 1];

% Object O
p1 = [-1 0 2];
p2 = [1 0 5];
p3 = [0 1 4];
p4 = [0 -1 3];
O = [p1' p2' p3' p4'];
%  For the regular object, perspectives
p = perspective_camera(O);
q = weak_perspective_camera(O);

% Rotated Object
O_R = R*O;
% Rotated Perspectives
p_r = perspective_camera(O_R);
q_r = weak_perspective_camera(O_R);

% ------- For Part C --------
% Plotting the regular object
% Labels
m = size(O_R(1,:));
labels = split(int2str(1:m(2)));
% Subplot 1
subplot(1,2,1)
hold on
wp_fill = area(p(1,:),p(2,:)); % Fill plot
wp_fill.FaceAlpha = 0.3;
wp_fill = area(q(1,:),q(2,:)); % Fill plot
wp_fill.FaceAlpha = 0.3;
plot(p(1,:),p(2,:),'o','LineWidth',9) % Plotting the points
plot(q(1,:),q(2,:),'o','LineWidth',9) % Plotting the points
hold off
title('Original Objects')

% Subplot 2
subplot(1,2,2)
hold on
wp_fill = area(p_r(1,:),p_r(2,:)); % Fill plot
wp_fill.FaceAlpha = 0.3;
wp_fill = area(q_r(1,:),q_r(2,:)); % Fill plot
wp_fill.FaceAlpha = 0.3;
plot(p_r(1,:),p_r(2,:),'o','LineWidth',9) % Plotting the points
plot(q_r(1,:),q_r(2,:),'o','LineWidth',9) % Plotting the points
hold off
title('Rotated Objects')

% -------- For Part D ------
% SSD of the original object O
ssd_object_O = sum(sum(abs(double(p)-double(q)).^2))
% SSD of the rotated object O_R
ssd_object_O_R = sum(sum(abs(double(p_r)-double(q_r)).^2))
% difference between the two SSDs
ssd_object_O - ssd_object_O_R