x1 = [1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 13 14 15 13 14 15 4 5 4 5]';
y1 = [5 4 3 2 2 3 4 5 5 6 7 8 8 7 6 5 5 5  5  5  5  5  5  6  6  6  4  4  4  4.5 4.5 5.5 5.5]';

ds1 = [x1, y1];

x2 = [1 2 5 6 5 6]';
y2 = [3 3 3 3 4 4]';

x2 = x2 + (0.2*rand(6,1) - 0.1);
y2 = y2 + (0.2*rand(6,1) - 0.1);
ds2 = [x2, y2];

x3 = [1 2 3 6 9 10 11]';
y3 = [3 3 3 3 3 3  3 ]';

ds3 = [x3, y3];

## Generate a two-cluster problem
sd1 = randn (20, 2) .+ [6 0];
sd2 = randn (20, 2) .+ [4 4];
sd3 = randn (20, 2) .+ [4 -4];
sd4 = randn (20, 2) .+ [2 6];
sd5 = randn (20, 2) .+ [2 -6];
sd4 = 0.5*randn (20, 2) - 1;

ds4 = [sd1; sd2; sd3; sd4];

ds5 = [0 0;
      -1 0;
      -1 1;
       1 0;
       1 2;
       2 2;
       0 2;
       2 1;
       4 4;
       5 4;
       6 4;
       7 4;
       4 5;
       5 6;
       6 7;
       6 9;
       8 2;
       -2 6;
       5 5;
      6 8;
	  7 9;
       8 8];
