nDimsI = 28;
Image = zeros(28,28);
% nNoofImages = nCol / (nDimsI ^ 2);
% nImRowCnt = 1;
 for nClassCnt = 0 : 9
    strLoadLoc = sprintf('test%d.mat',nClassCnt);
    load(strLoadLoc);
    [nRow nCol] = size(D);
    for nRowCnt = 1 : nRow
        for nImRowCnt = 1 : nDimsI
            Image(nImRowCnt, : ) = D(nRowCnt,(nImRowCnt - 1) * nDimsI + 1 : nImRowCnt * nDimsI);
        end
        strSaveLoc = sprintf('.\\Dataset\\Test\\%d\\%d.png',nClassCnt,nRowCnt);
        imwrite(Image,strSaveLoc,'png');
    end
end