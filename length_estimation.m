%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This program helps to obtain the length on micrographs or SEM images
% and annotate on the actual image
% Load the image of interest in the img variable 
% Select the reference line end points
% Mention the value of the reference line in microns
% Move the position of the text with help of property editor
% Code developed by: Lavanya S B on 28th March 2018
clear vars;
img = imread('E:\Research\Experimental data\October 2020\Saturday, October 03, 2020\afm_probe_measuremetn_point.png');
% img=rgb2gray(img1);
size_img = size(img);
figure(1);
imshow(img);title('select the reference length and enter its value in microns');
% Use this section for using matlab handles => Interactive in nature
% h=imline;
% pos = h.getPosition();
% xref = pos(:,1);
% yref = pos(:,2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calibrate for the reference
title('Select first point')
[xref(1),yref(1)]=ginput(1);
title('Select second point')
[xref(2),yref(2)]=ginput(1);

len_line = sqrt((xref(2)-xref(1))^2+(yref(2)-yref(1))^2);
ref_val = input('enter the reference value in microns ');
pixel_val= ref_val/len_line;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Run only this section after calibration
%Select line to estimate the value
title('Select first point')
[x(1),y(1)]=ginput(1);
title('Select second point')
[x(2),y(2)]=ginput(1);

len_xy = sqrt((x(2)-x(1))^2+(y(2)-y(1))^2);
len_val = len_xy*pixel_val;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Text postion wrt the line %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x_mid=(max(x)-min(x))/2;
y_mid=(max(y)-min(y))/2;
x_mid=x_mid+min(x);
y_mid=y_mid+min(y);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
line(x,y,'Color','yellow','LineWidth',1.25,'Marker','x'); % specify the line color and marker to draw the line
txt=[num2str(len_val,3),'\color{yellow}\bf \mu','m'];
txt=text(x_mid,y_mid,txt,'Color','yellow','HorizontalAlignment','center');  % display for 2 bit precision on the figure
% set(txt,'Rotation',90);
