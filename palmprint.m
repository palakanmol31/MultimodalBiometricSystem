function template = palmprint(image)

figure, imshow(image); 
grayImage = edge(image,'sobel'); % Read in image.
figure, imshow(grayImage); 
% Figure out where to divide it.
 [rows, columns, numberOfColorChannels] = size(grayImage);
r3 = int32(rows/10);
c3 = int32(columns/10);

image1 = grayImage(1:r3, 1:c3);
template(1,1)=isone(image1);
image2 = grayImage(1:r3, c3+1:2*c3);
template(1,2)=isone(image2);
image3 = grayImage(1:r3, 2*c3+1:3*c3);
template(1,3)=isone(image3);
image4 = grayImage(1:r3, 3*c3+1:4*c3);
template(1,4)=isone(image4);
image5 = grayImage(1:r3, 4*c3+1:5*c3);
template(1,5)=isone(image5);
image6 = grayImage(1:r3, 5*c3+1:6*c3);
template(1,6)=isone(image6);
image7 = grayImage(1:r3, 6*c3+1:7*c3);
template(1,7)=isone(image7);
image8 = grayImage(1:r3, 7*c3+1:8*c3);
template(1,8)=isone(image8);
image9 = grayImage(1:r3, 8*c3+1:9*c3);
template(1,9)=isone(image9);
image82 = grayImage(1:r3, 9*c3+1:end);
template(1,10)=isone(image82);
image10 = grayImage(r3+1:2*r3, 1:c3);
template(2,1)=isone(image10);
image11 = grayImage(r3+1:2*r3, c3+1:2*c3);
template(2,2)=isone(image11);
image12 = grayImage(r3+1:2*r3, 2*c3+1:3*c3);
template(2,3)=isone(image12);
image13 = grayImage(r3+1:2*r3, 3*c3+1:4*c3);
template(2,4)=isone(image13);
image14 = grayImage(r3+1:2*r3, 4*c3+1:5*c3);
template(2,5)=isone(image14);
image15 = grayImage(r3+1:2*r3, 5*c3+1:6*c3);
template(2,6)=isone(image15);
image16 = grayImage(r3+1:2*r3, 6*c3+1:7*c3);
template(2,7)=isone(image16);
image17 = grayImage(r3+1:2*r3, 7*c3+1:8*c3);
template(2,8)=isone(image17);
image18 = grayImage(r3+1:2*r3, 8*c3+1:9*c3);
template(2,9)=isone(image18);
image83 = grayImage(r3+1:2*r3, 9*c3+1:end);
template(2,10)=isone(image83);
image19 = grayImage(2*r3+1:3*r3, 1:c3);
template(3,1)=isone(image19);
image20 = grayImage(2*r3+1:3*r3, c3+1:2*c3);
template(3,2)=isone(image20);
image21 = grayImage(2*r3+1:3*r3, 2*c3+1:3*c3);
template(3,3)=isone(image21);
image22 = grayImage(2*r3+1:3*r3, 3*c3+1:4*c3);
template(3,4)=isone(image22);
image23 = grayImage(2*r3+1:3*r3, 4*c3+1:5*c3);
template(3,5)=isone(image23);
image24 = grayImage(2*r3+1:3*r3, 5*c3+1:6*c3);
template(3,6)=isone(image24);
image25 = grayImage(2*r3+1:3*r3, 6*c3+1:7*c3);
template(3,7)=isone(image25);
image26 = grayImage(2*r3+1:3*r3, 7*c3+1:8*c3);
template(3,8)=isone(image26);
image27 = grayImage(2*r3+1:3*r3, 8*c3+1:9*c3);
template(3,9)=isone(image27);
image84 = grayImage(2*r3+1:3*r3, 9*c3+1:end);
template(3,10)=isone(image84);
image28 = grayImage(3*r3+1:4*r3, 1:c3);
template(4,1)=isone(image28);
image29 = grayImage(3*r3+1:4*r3, c3+1:2*c3);
template(4,2)=isone(image29);
image30 = grayImage(3*r3+1:4*r3, 2*c3+1:3*c3);
template(4,3)=isone(image30);
image31 = grayImage(3*r3+1:4*r3, 3*c3+1:4*c3);
template(4,4)=isone(image31);
image32 = grayImage(3*r3+1:4*r3, 4*c3+1:5*c3);
template(4,5)=isone(image32);
image33 = grayImage(3*r3+1:4*r3, 5*c3+1:6*c3);
template(4,6)=isone(image33);
image34 = grayImage(3*r3+1:4*r3, 6*c3+1:7*c3);
template(4,7)=isone(image34);
image35 = grayImage(3*r3+1:4*r3, 7*c3+1:8*c3);
template(4,8)=isone(image35);
image36 = grayImage(3*r3+1:4*r3, 8*c3+1:9*c3);
template(4,9)=isone(image36);
image85 = grayImage(3*r3+1:4*r3, 9*c3+1:end);
template(4,10)=isone(image85);
image37 = grayImage(4*r3+1:5*r3, 1:c3);
template(5,1)=isone(image37);
image38 = grayImage(4*r3+1:5*r3, c3+1:2*c3);
template(5,2)=isone(image38);
image39 = grayImage(4*r3+1:5*r3, 2*c3+1:3*c3);
template(5,3)=isone(image39);
image40 = grayImage(4*r3+1:5*r3, 3*c3+1:4*c3);
template(5,4)=isone(image40);
image41 = grayImage(4*r3+1:5*r3, 4*c3+1:5*c3);
template(5,5)=isone(image41);
image42 = grayImage(4*r3+1:5*r3, 5*c3+1:6*c3);
template(5,6)=isone(image42);
image43 = grayImage(4*r3+1:5*r3, 6*c3+1:7*c3);
template(5,7)=isone(image43);
image44 = grayImage(4*r3+1:5*r3, 7*c3+1:8*c3);
template(5,8)=isone(image44);
image45 = grayImage(4*r3+1:5*r3, 8*c3+1:9*c3);
template(5,9)=isone(image45);
image86 = grayImage(4*r3+1:5*r3, 9*c3+1:end);
template(5,10)=isone(image86);
image46 = grayImage(5*r3+1:6*r3, 1:c3);
template(6,1)=isone(image46);
image47 = grayImage(5*r3+1:6*r3, c3+1:2*c3);
template(6,2)=isone(image47);
image48 = grayImage(5*r3+1:6*r3, 2*c3+1:3*c3);
template(6,3)=isone(image48);
image49 = grayImage(5*r3+1:6*r3, 3*c3+1:4*c3);
template(6,4)=isone(image49);
image50 = grayImage(5*r3+1:6*r3, 4*c3+1:5*c3);
template(6,5)=isone(image50);
image51 = grayImage(5*r3+1:6*r3, 5*c3+1:6*c3);
template(6,6)=isone(image51);
image52 = grayImage(5*r3+1:6*r3, 6*c3+1:7*c3);
template(6,7)=isone(image52);
image53 = grayImage(5*r3+1:6*r3, 7*c3+1:8*c3);
template(6,8)=isone(image53);
image54 = grayImage(5*r3+1:6*r3, 8*c3+1:9*c3);
template(6,9)=isone(image54);
image87 = grayImage(5*r3+1:6*r3, 9*c3+1:end);
template(6,10)=isone(image87);
image55 = grayImage(6*r3+1:7*r3, 1:c3);
template(7,1)=isone(image55);
image56 = grayImage(6*r3+1:7*r3, c3+1:2*c3);
template(7,2)=isone(image56);
image57 = grayImage(6*r3+1:7*r3, 2*c3+1:3*c3);
template(7,3)=isone(image57);
image58 = grayImage(6*r3+1:7*r3, 3*c3+1:4*c3);
template(7,4)=isone(image58);
image59 = grayImage(6*r3+1:7*r3, 4*c3+1:5*c3);
template(7,5)=isone(image59);
image60 = grayImage(6*r3+1:7*r3, 5*c3+1:6*c3);
template(7,6)=isone(image60);
image61 = grayImage(6*r3+1:7*r3, 6*c3+1:7*c3);
template(7,7)=isone(image61);
image62 = grayImage(6*r3+1:7*r3, 7*c3+1:8*c3);
template(7,8)=isone(image62);
image63 = grayImage(6*r3+1:7*r3, 8*c3+1:9*c3);
template(7,9)=isone(image63);
image88 = grayImage(6*r3+1:7*r3, 9*c3+1:end);
template(7,10)=isone(image88);
image64 = grayImage(7*r3+1:8*r3, 1:c3);
template(8,1)=isone(image64);
image65 = grayImage(7*r3+1:8*r3, c3+1:2*c3);
template(8,2)=isone(image65);
image66 = grayImage(7*r3+1:8*r3, 2*c3+1:3*c3);
template(8,3)=isone(image66);
image67 = grayImage(7*r3+1:8*r3, 3*c3+1:4*c3);
template(8,4)=isone(image67);
image68 = grayImage(7*r3+1:8*r3, 4*c3+1:5*c3);
template(8,5)=isone(image68);
image69 = grayImage(7*r3+1:8*r3, 5*c3+1:6*c3);
template(8,6)=isone(image69);
image70 = grayImage(7*r3+1:8*r3, 6*c3+1:7*c3);
template(8,7)=isone(image70);
image71 = grayImage(7*r3+1:8*r3, 7*c3+1:8*c3);
template(8,8)=isone(image71);
image72 = grayImage(7*r3+1:8*r3, 8*c3+1:9*c3);
template(8,9)=isone(image72);
image89 = grayImage(7*r3+1:8*r3, 9*c3+1:end);
template(8,10)=isone(image89);
image73 = grayImage(8*r3+1:9*r3, 1:c3);
template(9,1)=isone(image73);
image74 = grayImage(8*r3+1:9*r3, c3+1:2*c3);
template(9,2)=isone(image74);
image75 = grayImage(8*r3+1:9*r3, 2*c3+1:3*c3);
template(9,3)=isone(image75);
image76 = grayImage(8*r3+1:9*r3, 3*c3+1:4*c3);
template(9,4)=isone(image76);
image77 = grayImage(8*r3+1:9*r3, 4*c3+1:5*c3);
template(9,5)=isone(image77);
image78 = grayImage(8*r3+1:9*r3, 5*c3+1:6*c3);
template(9,6)=isone(image78);
image79 = grayImage(8*r3+1:9*r3, 6*c3+1:7*c3);
template(9,7)=isone(image79);
image80 = grayImage(8*r3+1:9*r3, 7*c3+1:8*c3);
template(9,8)=isone(image80);
image81 = grayImage(8*r3+1:9*r3, 8*c3+1:9*c3);
template(9,9)=isone(image81);
image90 = grayImage(8*r3+1:9*r3, 9*c3+1:end);
template(9,10)=isone(image90);
image91 = grayImage(9*r3+1:end, 1:c3);
template(10,1)=isone(image91);
image92 = grayImage(9*r3+1:end, c3+1:2*c3);
template(10,2)=isone(image92);
image93 = grayImage(9*r3+1:end, 2*c3+1:3*c3);
template(10,3)=isone(image93);
image94 = grayImage(9*r3+1:end, 3*c3+1:4*c3);
template(10,4)=isone(image94);
image95 = grayImage(9*r3+1:end, 4*c3+1:5*c3);
template(10,5)=isone(image95);
image96 = grayImage(9*r3+1:end, 5*c3+1:6*c3);
template(10,6)=isone(image96);
image97 = grayImage(9*r3+1:end, 6*c3+1:7*c3);
template(10,7)=isone(image97);
image98 = grayImage(9*r3+1:end, 7*c3+1:8*c3);
template(10,8)=isone(image98);
image99 = grayImage(9*r3+1:end, 8*c3+1:9*c3);
template(10,9)=isone(image99);
image100 = grayImage(9*r3+1:end, 9*c3+1:end);
template(10,10)=isone(image100);
% Display the 9 images.
% figure
% subplot(10,10,1);
% imshow(image1);
% subplot(10,10,2);
% imshow(image2);
% subplot(10,10,3);
% imshow(image3);
% subplot(10,10,4);
% imshow(image4);
% subplot(10,10,5);
% imshow(image5);
% subplot(10,10,6);
% imshow(image6);
% subplot(10,10,7);
% imshow(image7);
% subplot(10,10,8);
% imshow(image8);
% subplot(10,10,9);
% imshow(image9);
% subplot(10,10,10);
% imshow(image82);
% 
% subplot(10,10,11);
% imshow(image10);
% subplot(10,10,12);
% imshow(image11);
% subplot(10,10,13);
% imshow(image12);
% subplot(10,10,14);
% imshow(image13);
% subplot(10,10,15);
% imshow(image14);
% subplot(10,10,16);
% imshow(image15);
% subplot(10,10,17);
% imshow(image16);
% subplot(10,10,18);
% imshow(image17);
% subplot(10,10,19);
% imshow(image18);
% subplot(10,10,20);
% imshow(image83);
% subplot(10,10,21);
% imshow(image19);
% subplot(10,10,22);
% imshow(image20);
% subplot(10,10,23);
% imshow(image21);
% subplot(10,10,24);
% imshow(image22);
% subplot(10,10,25);
% imshow(image23);
% subplot(10,10,26);
% imshow(image24);
% subplot(10,10,27);
% imshow(image25);
% subplot(10,10,28);
% imshow(image26);
% subplot(10,10,29);
% imshow(image27);
% subplot(10,10,30);
% imshow(image84);
% 
% subplot(10,10,31);
% imshow(image28);
% subplot(10,10,32);
% imshow(image29);
% subplot(10,10,33);
% imshow(image30);
% subplot(10,10,34);
% imshow(image31);
% subplot(10,10,35);
% imshow(image32);
% subplot(10,10,36);
% imshow(image33);
% subplot(10,10,37);
% imshow(image34);
% subplot(10,10,38);
% imshow(image35);
% subplot(10,10,39);
% imshow(image36);
% subplot(10,10,40);
% imshow(image85);
% 
% subplot(10,10,41);
% imshow(image37);
% subplot(10,10,42);
% imshow(image38);
% subplot(10,10,43);
% imshow(image39);
% subplot(10,10,44);
% imshow(image40);
% subplot(10,10,45);
% imshow(image41);
% subplot(10,10,46);
% imshow(image42);
% subplot(10,10,47);
% imshow(image43);
% subplot(10,10,48);
% imshow(image44);
% subplot(10,10,49);
% imshow(image45);
% subplot(10,10,50);
% imshow(image86)
% 
% subplot(10,10,51);
% imshow(image46);
% subplot(10,10,52);
% imshow(image47);
% subplot(10,10,53);
% imshow(image48);
% subplot(10,10,54);
% imshow(image49);
% subplot(10,10,55);
% imshow(image50);
% subplot(10,10,56);
% imshow(image51);
% subplot(10,10,57);
% imshow(image52);
% subplot(10,10,58);
% imshow(image53);
% subplot(10,10,59);
% imshow(image54);
% subplot(10,10,60);
% imshow(image87);
%figure, imshow(imread('C:\Users\user\Desktop\te.bmp'))
% subplot(10,10,61);
% imshow(image55);
% subplot(10,10,62);
% imshow(image56);
% subplot(10,10,63);
% imshow(image57);
% subplot(10,10,64);
% imshow(image58);
% subplot(10,10,65);
% imshow(image59);
% subplot(10,10,66);
% imshow(image60);
% subplot(10,10,67);
% imshow(image61);
% subplot(10,10,68);
% imshow(image62);
% subplot(10,10,69);
% imshow(image63);
% subplot(10,10,70);
% imshow(image88);
% 
% subplot(10,10,71);
% imshow(image64);
% subplot(10,10,72);
% imshow(image65);
% subplot(10,10,73);
% imshow(image66);
% subplot(10,10,74);
% imshow(image67);
% subplot(10,10,75);
% imshow(image68);
% subplot(10,10,76);
% imshow(image69);
% subplot(10,10,77);
% imshow(image70);
% subplot(10,10,78);
% imshow(image71);
% subplot(10,10,79);
% imshow(image72);
% subplot(10,10,80);
% imshow(image89);
% 
% subplot(10,10,81);
% imshow(image73);
% subplot(10,10,82);
% imshow(image74);
% subplot(10,10,83);
% imshow(image75);
% subplot(10,10,84);
% imshow(image76);
% subplot(10,10,85);
% imshow(image77);
% subplot(10,10,86);
% imshow(image78);
% subplot(10,10,87);
% imshow(image79);
% subplot(10,10,88);
% imshow(image80);
% subplot(10,10,89);
% imshow(image81);
% subplot(10,10,90);
% imshow(image90);
% 
% subplot(10,10,91);
% imshow(image91);
% subplot(10,10,92);
% imshow(image92);
% subplot(10,10,93);
% imshow(image93);
% subplot(10,10,94);
% imshow(image94);
% subplot(10,10,95);
% imshow(image95);
% subplot(10,10,96);
% imshow(image96);
% subplot(10,10,97);
% imshow(image97);
% subplot(10,10,98);
% imshow(image98);
% subplot(10,10,99);
% imshow(image99);
% subplot(10,10,100);
% imshow(image100);

% template(:,:) no
end