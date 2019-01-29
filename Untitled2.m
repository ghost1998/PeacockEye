% location = './IS-RK/CountedPairs/*.jpg';
location = './Uncounted/';
% ds = imageDatastore(location);
image_names = dir(location);
num_images = size(image_names, 1) - 2;
i = 0
for idx = 3 : num_images
     disp(idx)
%      disp(strcat(location, image_names(idx).name))
     image_name = strcat(location, image_names(idx).name);
     disp(image_name);
     image = imread(image_name);
     subplot(1, 2, 1); imshow(image);
     
     img = image;


     [t1, t2] = Mask5(img, 0.4, 0.4);
     subplot(1, 2, 2); imshow(t2);
     i = i +2;
     pause;
%      img = imread();
end