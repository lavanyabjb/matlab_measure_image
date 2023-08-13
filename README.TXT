# Measure Image Dimensions in MATLAB
This is a Matlab script program to measure the length dimensions of the Scanning Electron Microscope (SEM) image without using the Image processing toolkit from MATLAB.

Step1:
Copy and paste the image address in the img variable. (Line 10) 

Step2:
Select the endpoints of the reference line whose dimensions are known. Enter the value of this line in microns in the Command Window. 
If the size of the pixels in microns (or any other length dimensions) is already known, comment out the lines from #22 to #28. Next, update the variable pixel_val to the known value

Step3:
Run the section "%% Run only this section after calibration" on line #31 every time a new measurement is done.

Step4:
Move the position of the text on the image with the help of the property editor cursor as desired.
