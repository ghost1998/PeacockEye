     img = imread('./Uncounted/AmbrosiaBavdhan.JPG');
     alpha = 0.4;
     beta = 0.4;
     r = img(:, :, 1);
     g = img(:, :, 2);
     b = img(:, :, 3);
     imgnew(:,:,1) = (1-double(alpha)-double(beta)) * (double(r) ./ (double(r) + double(g)+ double(b))) ;
     imgnew(:,:,2) = double(beta) * (double(g) ./ (double(r) + double(g)+ double(b))) ;
     imgnew(:,:,3) = double(alpha) * (double(b) ./ (double(r) + double(g)+ double(b))) ;

