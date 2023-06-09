% wavelet_gbb2.m
%%%%%%%%%%%%%%%%%%%%
% load image file
RGB=imread('marina_bay.jpg');
G=im2gray(RGB);
A=imresize(G, 1/5);
% multiresolution decomposition
[C,S]=wavedec2(A,5,'db2');
AA1=appcoef2(C,S,'db2',1);
AA2=appcoef2(C,S,'db2',2);
AA3=appcoef2(C,S,'db2',3);
AA4=appcoef2(C,S,'db2',4);
AA5=appcoef2(C,S,'db2',5);
[HH1,VV1,DD1] = detcoef2('all',C,S,1);
[HH2,VV2,DD2] = detcoef2('all',C,S,2);
[HH3,VV3,DD3] = detcoef2('all',C,S,3);
[HH4,VV4,DD4] = detcoef2('all',C,S,4);
[HH5,VV5,DD5] = detcoef2('all',C,S,5);
A1=wcodemat(AA1,255,'mat',1);
H1=wcodemat(HH1,255,'mat',1);
V1=wcodemat(VV1,255,'mat',1);
D1=wcodemat(DD1,255,'mat',1);
B1=H1+V1+D1;
A2=wcodemat(AA2,255,'mat',1);
H2=wcodemat(HH2,255,'mat',1);
V2=wcodemat(VV2,255,'mat',1);
D2=wcodemat(DD2,255,'mat',1);
B2=H2+V2+D2;
A3=wcodemat(AA3,255,'mat',1);
H3=wcodemat(HH3,255,'mat',1);
V3=wcodemat(VV3,255,'mat',1);
D3=wcodemat(DD3,255,'mat',1);
B3=H3+V3+D3;
A4=wcodemat(AA4,255,'mat',1);
H4=wcodemat(HH4,255,'mat',1);
V4=wcodemat(VV4,255,'mat',1);
D4=wcodemat(DD4,255,'mat',1);
B4=H4+V4+D4;
A5=wcodemat(AA5,255,'mat',1);
H5=wcodemat(HH5,255,'mat',1);
V5=wcodemat(VV5,255,'mat',1);
D5=wcodemat(DD5,255,'mat',1);
B5=H5+V5+D5;
% plot A(n)
subplot(3,4,1);
imshow(RGB);
title('Original RGB Image');
subplot(3,4,2);
imagesc(A);
colormap('gray');
title('Level 0, i.e., Original Image');
subplot(3,4,3);
imagesc(A1);
title('Level 1 Approximation');
subplot(3,4,4);
imagesc(B1);
title('Level 1 Detail');
subplot(3,4,5);
imagesc(A2);
title('Lebel 2 Approximation');
subplot(3,4,6);
imagesc(B2);
title('Level 2 Detail');
subplot(3,4,7);
imagesc(A3);
title('Level 3 Approximation');
subplot(3,4,8);
imagesc(B3);
title('Level 3 Detail');
subplot(3,4,9);
imagesc(A4);
title('Lebel 4 Approximation');
subplot(3,4,10);
imagesc(B4);
title('Level 4 Detail');
subplot(3,4,11);
imagesc(A5);
title('Level 5 Approximation');
subplot(3,4,12);
imagesc(B5);
title('Level 5 Detail');
