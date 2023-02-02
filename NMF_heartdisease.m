% NMF in Matlab on Heart failure data sets 
X=heartfailureclinicalrecordsdataset;
opt = statset('MaxIter',100,'Display','final');
[W0,H0] = nnmf(X,2,'replicates',5,'options',opt,'algorithm','mult');

biplot(H0','scores',W0);
axis([0 1.1 0 1.1])
xlabel('Column 1')
ylabel('Column 2')

m=299; % choose based on the data set
n=13;
%Calculate rms residuals
D = norm(X - W0*H0,'fro')/sqrt(n*m);
disp(D)

