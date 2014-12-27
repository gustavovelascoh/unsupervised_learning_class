% slc_democ
ds = ds2;
dsl = size(ds,1);
d = pdist(ds);

l = linkage(d);

figure, 
subplot(2,2,1), plotds(ds);

k = 3;
r = size(l,1) - k + 1;
idx = 1:dsl;

for i=idx

	row = 0;
	c_id = i;
	while (row < r)
		[row, col] = find(l(:,1:2)==c_id);
		c_id = row+length(idx);
	end

	idx(i) = c_id;

end

idx = idx -min(idx) + 1;

subplot(2,2,2),plot (ds(idx==1, 1), ds(idx==1, 2), 'ro');
hold on
subplot(2,2,2),plot (ds(idx==2, 1), ds(idx==2, 2), 'bs');
subplot(2,2,2),plot (ds(idx==3, 1), ds(idx==3, 2), 'm>');


k = 2;
r = size(l,1) - k + 1;
idx = 1:dsl;

for i=idx

	row = 0;
	c_id = i;
	while (row < r)
		[row, col] = find(l(:,1:2)==c_id);
		c_id = row+length(idx);
	end

	idx(i) = c_id;

end

idx = idx -min(idx) + 1;

subplot(2,2,3),plot (ds(idx==1, 1), ds(idx==1, 2), 'ro');
hold on
subplot(2,2,3),plot (ds(idx==2, 1), ds(idx==2, 2), 'bs');


subplot(2,2,4), dendogram(l);
