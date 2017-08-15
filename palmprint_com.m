function p_test=palmprint_com(img)
figure;imshow(imread(img))
im=imread(img);
p_test=palmprint(im);
end