function preprocess(a,b,directory,to,ext)
    srcFiles = dir(strcat(directory,filesep,'*.',ext));
    for i = 1 : length(srcFiles)
        filename = strcat(directory,filesep,srcFiles(i).name);
        im = imread(filename);
        [m,n,c] = size(im);
        if c>1
            im = rgb2gray(im);
        end
        k=imresize(im,[a,b]);
        nm = strcat(to,'/',srcFiles(i).name);
        imwrite(k,nm,ext);
    end
end