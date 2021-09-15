% Object O
p1 = [-1 0 2];
p2 = [1 0 5];
p3 = [0 1 4];
p4 = [0 -1 3];
O = [p1' p2' p3' p4'];

p = perspective_camera(O)
q = weak_perspective_camera(O)

difference = sum(sum(abs(double(p)-double(q)).^2))