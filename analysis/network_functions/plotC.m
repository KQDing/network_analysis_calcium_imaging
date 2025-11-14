% plot the progression of communitty assignment of each neuron in their location
function p = plotC(sortedidx, L_a, neuronType, c, a, save_dir)
    % initialize location matrix
    Days = [ -1, 1, 3, 7 ];
    p = zeros(size(sortedidx,1),3);
    for o = 1:size(sortedidx,2)-3 % for every day
        for u = 1: size(sortedidx,1) % for each neuron
            n = sortedidx(u,5); % get neuron index
            p(u,1) = L_a(n,1);
            p(u,2) = L_a(n,2);
            p(u,3) = sortedidx(u,o);
        end
        color = p(:,3); % community assignment as the color weight
        figure
        scatter(p(:,1), p(:,2), 50, color, 'filled')
        title(sprintf("Neuron %s at Imaging Plane%d Community Assignment at Day%d",neuronType{ c }, a, Days(o)))
        colormap jet
        colorbar
        print(fullfile(save_dir,sprintf( 'location_%s_A%dD%d', neuronType{ c },a,o )), '-dpng' )
    end
end