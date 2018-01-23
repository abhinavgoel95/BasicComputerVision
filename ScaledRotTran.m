close; clear;
a = imread('/Users/Anup/Desktop/Screen Shot 2017-01-11 at 8.41.09 AM.png');
b = rgb2gray(a);
r = [];
theta = 45;
m = 10
t = [cosd(theta) -sind(theta) 30/m; sind(theta) cosd(theta) 30/m];
t = ceil(t); %round and floor won't work
t = m*t
s = size(a);
for r_ind = 1 : s(1)
    for c_ind = 1 : s(2)
        x = [r_ind c_ind 1]';
        xd = t*x;
        r(xd(1),xd(2)) = b(r_ind, c_ind);
    end
end
r = uint8(r);
imshow(r);
