function partition = ThresholdA2P(T,save_dir,neuronType,c,a,tp)
% convert thresholded upper triangle allegiance matrix to community
% partition, save allegiance matrices, and create network connection graph
% called in: consensus_A.m


T_o = T+T';
save(fullfile(save_dir,sprintf("Max_Allegiance_%s_A%d_D%d",neuronType{ c },a,tp)),'T_o')
G = graph(T_o);
figure
p = plot(G);
p.NodeLabelMode = 'auto';
title(sprintf("Network Graph of %s IP%d D%d", neuronType{ c }, a, tp))
print(fullfile(save_dir,sprintf( 'NG_%s_A%d_D%d', neuronType{ c },a,tp )), '-dpng' )

% Find connected components
partition = conncomp(G);
