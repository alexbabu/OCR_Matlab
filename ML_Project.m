% This is the main file for my machine learning project
function nVoid = ML_main()
g_Dataset = ReadData();
nMenu = input('For training press 0, for testing press 1, press 2 for OCR : ');

if(nMenu == 0)
    nMenu = input('For which data should we train? : ');
    arr_nWeightVactor = TrainusingSVM(nMenu);
%     write the weight vector to file
%     CrossValidate()
elseif(nMenu == 1)
    nMenu = input('For which data should we test?');
    Test( nMenu);
else
%     get image path
%     OCR(Image)
end