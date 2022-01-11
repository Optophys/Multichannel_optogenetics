% This code loads a subset of the (artefact removed) raw data used to create figure 4A.
% The second dimension: time (edges), is -5*30:10*30, that is, 5 milliseconds
% before light onset and 10 milliseconds after light onset, when sampled at 30 kHz.
% ycoords: is the depth in micrometer of the probe.

load('rawData.mat','rawDataMatrix_ChnsTimeTrialsFiber','edges','ycoords');

data = [];
for fi=1:size(rawDataMatrix_ChnsTimeTrialsFiber,4)    

    for ti=1:size(rawDataMatrix_ChnsTimeTrialsFiber,3)
        data = [data rawDataMatrix_ChnsTimeTrialsFiber(:,:,ti,fi)];        
    end
    
    figure(1); clf; imagesc(data,[-200 200]);
    ylabel('Probe depth');
    xlabel('Time x Trials (10) x Fibers (7)');
    a = colorbar('vert'); ylabel(a,'Microvolts');
    pause(0.1);
end