%% This file plots correlation matrices used for Supplementary Figure 1
load("../test/Omega=1 May PYR/Max_Allegiance_PYR0_A2_D3.mat")

figure;
imagesc(T_o)
colorbar off
axis off
print('methodfigure/max_allegiance_obs','-dpdf','-r300');
close all

%%
rng(0,'twister');

% Get the size of the matrix
A = T_o;
n = size(A, 1);

% Loop through the upper triangle of the matrix
for i = 1:n
    for j = i:n
        if T_o(i,j) == 0
            rand_val = randi([50, 125]); % Generate a random integer between 0 and 200
            A(i,j) = rand_val;
            A(j,i) = rand_val; % Ensure symmetry
        end
    end
end

figure;
imagesc(A)
colorbar off
axis off
print('methodfigure/toy_allegiance_obs','-dpdf','-r300');
close all

%%

load("../test/Omega=1 May PYR/Max_Allegiance_PYR0_A2_D7.mat")

% Get the size of the matrix
A = T_o;
n = size(A, 1);

% Loop through the upper triangle of the matrix
for i = 1:n
    for j = i:n
        if T_o(i,j) == 0
            rand_val = randi([0, 100]); % Generate a random integer between 0 and 200
            A(i,j) = rand_val;
            A(j,i) = rand_val; % Ensure symmetry
        end
        if T_o(i,j) == 200
            rand_val = randi([150, 200]); % Generate a random integer between 0 and 200
            A(i,j) = rand_val;
            A(j,i) = rand_val; % Ensure symmetry
        end
    end
end

figure;
imagesc(A)
colorbar off
axis off
print('methodfigure/toy_allegiance_null','-dpdf','-r300');
close all