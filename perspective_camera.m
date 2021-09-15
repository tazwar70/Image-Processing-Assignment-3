function object_2d = perspective_camera(O)
    % Focal Length
    focal_length =  1;

    Z = O(3,:);
    X_2d = focal_length*(O(1,:)./Z);
    Y_2d = focal_length*(O(2,:)./Z);

    object_2d = [X_2d;Y_2d];
end