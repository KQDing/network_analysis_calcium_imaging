function [Community,Q,B,n_it]=temporal_community_eval(A,gamma,omega,win)
% adapted from the genlouvain toolbox
% must have the genlouvain toolbox functions in the same directory

%Inputs:
%A=cell array of (window) N*N, adjacency matrix
%gamma= Gamma Parameter for Community Detection
%omega = interlayer coupling strength

%Outputs:
%Community= Community assigned to the nodes
%Q= Quality Function
%B=Modularity matrix


[B,twom] = multiord(A,gamma,omega);
%for better result, change the next function from 'genlouvain' to 'iterated_genlouvaion'
% [Community_flat,Q] = genlouvain(B); 
[Community_flat,Q,n_it] = iterated_genlouvain(B); 
Q = Q / twom;

Community = reshape(Community_flat, [length(A{1}) win]); %reshape to node*window
end