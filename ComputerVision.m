%Computer Vision = epic
 I = imread('C:\Users\Marc\Documents\GitHub\ComputerVision\Pictures\puzzle1.jpg');

 I = superpixels(I,13);
 
 mask = boundarymask(I);
 figure
 imshow(mask, 'InitialMagnification', 67)
 
 
 
 
 
 % cform = makecform('srgb2lab');
% lab_I = applycform(I,cform);
% 
% ab = double(lab_I(:,:,2:3));
% nrows = size(ab,1);
% ncols = size(ab,2);
% ab = reshape(ab,nrows*ncols,2);
% 
% nColors = 3;
% % repeat the clustering 3 times to avoid local minima
% [cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
%                                       'Replicates',3);
%                                   
% pixel_labels = reshape(cluster_idx,nrows,ncols);
% imshow(pixel_labels,[]), title('image labeled by cluster index');
% 
% segmented_images = cell(1,3);
% rgb_label = repmat(pixel_labels,[1 1 3]);
% 
% for k = 1:nColors
%     color = I;
%     color(rgb_label ~= k) = 0;
%     segmented_images{k} = color;
% end
% 
% imshow(segmented_images{1}), title('objects in cluster 1');