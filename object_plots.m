function plot = object_plots(O)
% Focal Length
    focal_length =  1;

% Perspective
    Z_p = O(3,:);
    X_p = focal_length*(O(1,:)./Z_p);
    Y_p = focal_length*(O(2,:)./Z_p);
    perspective_object = [X_p;Y_p]
    
% Weak
    Z_0 = mean(O(3,:));
    X_wp = (focal_length*O(1,:))./Z_0;
    Y_wp = (focal_length*O(2,:))./Z_0;
    weak_perspective_object = [X_wp;Y_wp]
    
% Plot
    % Labels
    m = size(O(1,:));
    labels = split(int2str(1:m(2)));

% % Perspective
%     subplot(1,2,1)
%     area(X_p,Y_p) % Fill plot
%     hold on
%     plot(X_p,Y_p,'o','LineWidth',9) % Plotting the points
%     hold off
%     text(X_p,Y_p,labels) % Text labels
%     title('Perspective Camera')
% 
% % Weak Perspective
%     subplot(1,2,2)
%     area(X_wp,Y_wp) % Fill plot
%     hold on
%     plot(X_wp,Y_wp,'o','LineWidth',9) % Plotting the points
%     hold off
%     text(X_wp,Y_wp,labels) % Text labels
%     title('Weak Perspective Camera')
    
% ------------ One the same plot ---------
    figure
% Perspective
%     p_fill = 
    area(X_p,Y_p); % Fill plot
%     p_fill.FaceAlpha = 0.3;
    hold on
    plot(X_p,Y_p,'o','LineWidth',9) % Plotting the points
    text(X_p,Y_p,labels) % Text labels
    
% Weak Perspective
%     wp_fill = 
    area(X_wp,Y_wp); % Fill plot
%     wp_fill.FaceAlpha = 0.3;
    plot(X_wp,Y_wp,'o','LineWidth',9) % Plotting the points    
    text(X_wp,Y_wp,labels) % Text labels
    hold off
    title('Objects')
end