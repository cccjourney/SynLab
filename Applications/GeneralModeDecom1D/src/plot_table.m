function hf = plot_table(A,range)
[num L] = size(A);
pos = zeros(num,4);
sz = 0.9/num;
pos(:,1) = 0.135;
pos(:,4) = sz;
pos(:,2) = 0.95-sz*(1:num)';
pos(:,3) = 0.85;
hf = figure('Color',[1,1,1],... 
'Position',[300 100 600 400],... 
'PaperPositionMode','auto'); 
for cnt = 1:num
axes_plot = axes('Parent',hf,... 
'Position',pos(cnt,:)); 
box on; 
plot(axes_plot,A(cnt,:));  
if cnt == 1
    y_tick_num_org = range(1)*0.75:(range(2)-range(1))*0.75/2:range(2)*0.75; 
for i = 1 : length(y_tick_num_org) 
yLabel_org{i} = num2str(y_tick_num_org(i)); 
end 
    set(axes_plot,... 
'XLim',[0 L],... 
'YLim',range,... 
'YTick',y_tick_num_org,... 
'XTickLabel',[],... 
'YTickLabel',yLabel_org,...
'FontSize',16); 
else
    y_tick_num_org = range(1)*0.75/2:(range(2)-range(1))*0.75/4:range(2)*0.75/2; 
for i = 1 : length(y_tick_num_org) 
yLabel_org{i} = num2str(y_tick_num_org(i)); 
end 
    set(axes_plot,... 
'XLim',[0 L],... 
'YLim',range/2,... 
'YTick',y_tick_num_org,... 
'XTickLabel',[],... 
'YTickLabel',yLabel_org,...
'FontSize',16); 
end
end
