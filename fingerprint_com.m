function f_test= fingerprint_com(img)
figure;imshow(imread(img));
im=imread(img);
if ndims(im) == 3; im = rgb2gray(im); end 
f_test=ext_finger(im,1);
end