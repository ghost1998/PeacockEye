% location = './IS-RK/CountedPairs/*.jpg';
location = './IS-RK/CountedPairs/';
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
     [t1, t2] = Mask3(image);
     subplot(1, 2, 2); imshow(t2);
     i = i +2;
     pause;
%      img = imread();
end

