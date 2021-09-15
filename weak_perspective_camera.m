function O_2d = weak_perspective_camera(O)
    % Focal Length
    focal_length =  1;
    
    X = focal_length*O(1,:);
    Y = focal_length*O(2,:);
    Z_0 = mean(O(3,:));

    O_2d = [X./Z_0;Y./Z_0];
end