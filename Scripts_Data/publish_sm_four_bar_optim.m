% Script to test and publish results

cd(fileparts(which('sm_four_bar_optim.slx')));

cd('html');

filelist_m=dir('*.m');
filenames_m = {filelist_m.name};
warning('off','Simulink:Engine:MdlFileShadowedByFile');

for i=1:length(filenames_m)
    if ~(strcmp(filenames_m{i},'publish_all_html.m'))
    publish(filenames_m{i},'showCode',false)
    end
end