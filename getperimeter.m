function Perimeter = getperimeter(pixellist, t3)
    t4 = zeros(size(t3));
    t4(pixellist) = 1;
    B =  bwboundaries(t4);
    boundary = B{1};
    
    Perimeter = 0;
    for i = 1:length(boundary)
        if i ~= length(boundary)
            pixel1 = boundary(i,:);
            pixel2 = boundary(i+1,:);
        else
            pixel1 = boundary(i,:);
            pixel2 = boundary(1,:); 
        end
        Cur_dist = ((pixel1(1,1) - pixel2(1,1)).^2 + (pixel1(1,2) - pixel2(1,2)).^2).^0.5;
        Perimeter = Perimeter + Cur_dist;
    end
end


