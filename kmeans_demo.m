%kmeans
## Generate a two-cluster problem
% C1 = randn (100, 2) + 1;
% C2 = randn (100, 2) - 1;
% data = [C1; C2];

data = ds3;

 ## Perform clustering
 [idx, centers] = kmeans (data, 3);

 ## Plot the result
 figure
 plot (data (idx==1, 1), data (idx==1, 2), 'ro');
 hold on
 plot (data (idx==2, 1), data (idx==2, 2), 'bs');
  plot (data (idx==3, 1), data (idx==3, 2), 'kp');
%    plot (data (idx==4, 1), data (idx==4, 2), 'g^');
 plot (centers (:, 1), centers (:, 2), 'kv', 'markersize', 10);
 hold off
