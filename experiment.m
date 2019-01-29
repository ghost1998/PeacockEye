image_name = './IS-RK/CountedPairs/BirlaHouseCFFM1(c).jpg';
image = imread(image_name);

% Threshold the image 
[t1, t2] = Mask3(image);

% Apply median filter
kernel = [25, 25];
t3 = medfilt2(t1, kernel);
imshowpair(image,t3,'montage')


% Conected components
CC = bwconncomp(t3)
S = regionprops(CC,'Centroid')

for idx = 1 : CC.NumObjects
    pixellist = CC.PixelIdxList{1, idx};
    objectarea = getarea(pixellist);
    objecperimeter = getperimeter(pixellist);
    roundness_threshold = 0.1;
    roundnessmean = 1;
    roundness = ((objecperimeter * objecperimeter) / (4*pi*objectarea));
    if(abs(roundbess - roundnessmean) > roundness_threshold)
        t3(pixellist) = 0;
    end
end

