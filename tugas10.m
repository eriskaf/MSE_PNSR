% =====================================
% ALAT UKUR KUALITAS CITRA
% =====================================

clc;
clear all;
close all;
citrainput=[8 2 3; 3 4 5; 2 2 1;]
citraoutput=[6 1 2; 1 1 1; 2 1 1;]
[baris,kolom] = size(citrainput);
%pengukuran MSE dan PNSR
MSE = sum(sum((citrainput-citraoutput).^2))/(baris*kolom)
PNSR = 10*log10(max(citrainput(:).^2)/(MSE))