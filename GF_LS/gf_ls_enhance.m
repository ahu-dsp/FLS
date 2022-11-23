%% image detail enhancement
function ImgE=gf_ls_enhance(Img,guide,sigma_s,sigma_r)
if ~exist('sigma_s','var')
    sigma_s = 12;
end
if ~exist('sigma_r','var')
    sigma_r = 0.04;
end
if ~exist('guide','var')
    guide=Img;
end
% Img = imread("Road_IR.jpg");
Img = im2double(Img);  % Image should be normalized into [0, 1]
guide=im2double(guide);
S = GF_LS(Img, guide, sigma_s, sigma_r);
ImgE = Img + 2*(Img - S);
end

% figure
% imshow([Img, ImgE])
% imwrite(ImgE,'Road_Vis_enhance.jpg');

