function SSD = sum_of_square_differences(O)
    % P (p1, p2, p3, ...., pn)
    p = perspective_camera(O);
    % Q (p1, p2, p3, ...., pn)
    q = weak_perspective_camera(O);
    % Sum of squares differences
    SSD = sum(sum(abs(double(p)-double(q)).^2));
end