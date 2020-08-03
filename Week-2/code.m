data=csvread('\Breast-Cancer-Prediction\Dataset.csv');
[m n]=size(data)
comp_data = data(randperm(size(data,1)),:);
data=comp_data;
% % zscore:
% % -------
% Z=zscore(data(:,1:end-1));
% data=[Z data(:,end)];

%Number of Data Points
disp(length(data))

for i=1:m
    if(data(i,end)==0)
        data(i,end)=-1;
    end
end

X=data(:,1:end-1);
Y=data(:,end);
rng('default');

% % %------------------------------------------------
% % % CLASSIFIERS:
% % %------------------------------------------------
% % KNN:
% % ----
% Mdl=fitcknn(X,Y,'NumNeighbors',1);
% rloss=resubLoss(Mdl)
% CVMdl=crossval(Mdl,'KFold',4);
% Ypred=kfoldPredict(CVMdl);
% cvmdlloss=kfoldLoss(CVMdl)
% C=confusionmat(Y,Ypred)
% % 
% %------------------------------------------------



% % % Decision tree:
% % %------------------------------------------------
% Mdl=fitctree(X,Y);
% rloss=resubLoss(Mdl)
% CVMdl=crossval(Mdl,'KFold',24);
% Ypred=kfoldPredict(CVMdl);
% cvmdlloss=kfoldLoss(CVMdl)
% C=confusionmat(Y,Ypred)
% % 
% %-------------
