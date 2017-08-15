% Offsets and rescales image so that the minimum value is 0
% and the maximum value is 1.  Result is returned in n.  If the image is
% colour the image is converted to HSV and the value/intensity component
% is normalised to 0-1 before being converted back to RGB.

function n = normalise(im, reqmean, reqvar)

    if ~(nargin == 1 | nargin == 3)
       error('No of arguments must be 1 or 3');
    end
    
    if nargin == 1   % Normalise 0 - 1
	if ndims(im) == 3         % Assume colour image 
	    hsv = rgb2hsv(im);
	    v = hsv(:,:,3);
	    v = v - min(v(:));    % Just normalise value component
	    v = v/max(v(:));
	    hsv(:,:,3) = v;
	    n = hsv2rgb(hsv);
	else                      % Assume greyscale 
	    if ~isa(im,'double'), im = double(im); end
	    n = im - min(im(:));
	    n = n/max(n(:));
	end
	
    else  % Normalise to desired mean and variance
	
	if ndims(im) == 3         % colour image?
	    error('cannot normalise colour image to desired mean and variance');
	end

	if ~isa(im,'double'), im = double(im); end	
	im = im - mean(im(:));    
	im = im/std(im(:));      % Zero mean, unit std dev

	n = reqmean + im*sqrt(reqvar);
    end
    
