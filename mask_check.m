function [BW,maskedRGBImage] = Mask5(img)

     r = img(:, :, 1);
     g = img(:, :, 2);
     b = img(:, :, 3);
     imgnew(:,:,1) =   (double(r) ./ (double(r) + double(g)+ double(b))) ;
     imgnew(:,:,2) = (double(g) ./ (double(r) + double(g)+ double(b))) ;
     imgnew(:,:,3) = (double(b) ./ (double(r) + double(g)+ double(b))) ;
     RGB = imgnew;

% Convert RGB image to chosen color space
I = RGB;

% Define thresholds for channel 1 based on histogram settings
channel1Min = 0.000;
channel1Max = 0.249;

% Define thresholds for channel 2 based on histogram settings
channel2Min = 0.000;
channel2Max = 0.969;

% Define thresholds for channel 3 based on histogram settings
channel3Min = 0.000;
channel3Max = 0.493;

% Create mask based on chosen histogram thresholds
sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ...
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;

% Initialize output masked image based on input image.
maskedRGBImage = RGB;

% Set background pixels where BW is false to zero.
maskedRGBImage(repmat(~BW,[1 1 3])) = 0;

end
