% function nVoid = ReadData()

nReference = 0;
nReadImageCnt = 0;

for nCnt = 0 : 9
    strLoadLocation = sprintf('.\\Machine Learning\\Dataset\\Train\\%d\\*.png',nCnt);
    fnames = dir(strLoadLocation);
    nNoofFiles = length(fnames);
    for nFileCnt = 1 : nNoofFiles
        strImageLoc = sprintf('.\\Machine Learning\\Dataset\\Train\\%d\\%d.png', nCnt, nNoofFiles);
        Image = imread(strImageLoc);
        nReadImageCnt = nReadImageCnt + 1;
        Feature = hog_feature_vector(Image);
        if(nCnt == nReference)
            nLabel = 1;
        else
            nLabel = 0;
        end
        arr_FeatureArray = struct();
    end
end

