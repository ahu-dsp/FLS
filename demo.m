img1=imread('trafficIR.png');
img2=imread('trafficVIS.png');
fusion=FL(img2,img1,1);
figure,imshow(fusion);
