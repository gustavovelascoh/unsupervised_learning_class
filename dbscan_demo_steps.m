%clear all;
close all;
clear figure;

%eps = 2.3;
%minPts = 5;

eps = 1.7;
minPts = 3;

ds = ds1;

x = ds(:,1);
y = ds(:,2);

L = length(x);

%plot(x,y,'rx','linewidth',2);


d_x = x - x';
d_y = y - y';

% Matriz de distancias
d = sqrt(d_x.^2 + d_y.^2);

% Parametros DBSCAN



d_th = (d <= eps).*not(eye(L));

np = sum(d_th);

labels = -1*ones(L,1);
visited = zeros(L,1);

c_id = 0;

for i=1:L
	if (visited(i) == 0)
		visited(i) = 1;
		
		eps_neigs = find(d_th(:,i));

		if(np(i) < minPts)
			labels(i) = 0;
		else
			c_id++
			labels(i) = c_id;
			
			j = 1;
			while j<=length(eps_neigs)
				if (visited(eps_neigs(j)) == 0)
					visited(eps_neigs(j)) = 1;
%					printf("j: %d\n",eps_neigs(j) );
					eps_neigs_2 = find(d_th(:,eps_neigs(j)));
					
					if(np(eps_neigs(j)) >= minPts)
						%eps_neigs
						eps_neigs = unique([eps_neigs;eps_neigs_2]);
					end

				end
				if (labels(eps_neigs(j)) == -1 || labels(eps_neigs(j)) == 0)
					labels(eps_neigs(j)) = c_id;
					j = 1;				
				elseif (labels(eps_neigs(j)) ~= c_id)
					% Puntos inter cluster
					printf("Trying %d <- %d ",labels(eps_neigs(j)),c_id)
					labels(eps_neigs(j)) = 99;
					%j = 1;
				end
				j++;
				hold on;

				plot(x(labels==0),y(labels==0),' rx', 'linewidth',3);
				plot(x(labels==1),y(labels==1),' bo', 'linewidth',3);
				plot(x(labels==2),y(labels==2),' ms', 'linewidth',3);
				plot(x(labels==3),y(labels==3),' cp', 'linewidth',3);
				plot(x(labels==99),y(labels==99),' ko', 'linewidth',3);
				plot(x(labels==-1),y(labels==-1),' k+', 'linewidth',3);
					
				pause(0.1);
				hold off;
			end
			i;
%			eps_neigs'
%			visited'
%			labels'
			eps_neigs = [];
		end
	end
	
	
end






