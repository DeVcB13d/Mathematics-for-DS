% 4) Use SVD to demonstrate the dimensionality reduction with the help of image data-sets.
load Yale_32x32.mat
size(fea)
imshow(uint8(reshape(fea(1,:),[32,32])))

FACE = fea';

[U,S,Vt] = svd(FACE);

size(U)
size(Vt)
size(S)
diag(S);
PR = U(:,1:35)'*FACE(:,1);
size(PR)
REC = U(:,1:35)*PR;
size(REC)


imshow(uint8(reshape(REC,[32,32])))
imshow(uint8(reshape(fea(1,:),[32,32])))

PR = U(:,1:120)'*FACE(:,1);
size(PR)

REC = U(:,1:120)*PR;
size(REC)

imshow(uint8(reshape(REC,[32,32])))
PR = U'*FACE(:,1);
size(PR)
REC = U*PR;
imshow(uint8(reshape(REC,[32,32])))
