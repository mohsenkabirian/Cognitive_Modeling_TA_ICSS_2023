function rmsd = getregpred (parms, data)
    b0 = parms(1) ;
    b1 = parms(2) ;
    b2 = parms(3) ;
    preds = b0 + (b1 .* data(:,2)) + (b2 .* data(:,2) .^ 2);
    sd =(preds - data(:,1) ) .^ 2;
    rmsd = sqrt(sum(sd)/numel(sd));
end