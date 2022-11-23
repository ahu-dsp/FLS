function S=gf_ls_smooth(Img,Guide,sigma_s,sigma_r)
if ~exist('sigma_s','var')
    sigma_s = 16;
end
if ~exist('sigma_r','var')
    sigma_r = 0.5;
end
if ~exist('Guide','var')
    Guide = Img;
end

% Img = imread("seg_road4.jpg");
Img = im2double(Img);  % Image should be normalized into [0, 1]
Guide = im2double(Guide);

S = GF_LS(Img, Guide, sigma_s, sigma_r);
end
%%%¾ùÖµÂË²¨



% figure
% imshow([img, S])