close; clear;
%function y = Translate(x)
a = imread('/Users/Anup/Desktop/Screen Shot 2017-01-11 at 8.41.09 AM.png');
b = rgb2gray(a);
r = [];
t = [1 0 10; 0 1 15];
s = size(a);
for r_ind = 1 : s(1)
    for c_ind = 1 : s(2)
        x = [r_ind c_ind 1]';
        xd = t*x;
        r(xd(1),xd(2)) = a(r_ind, c_ind);
    end
end
r = uint8(r);
imshow(r);
