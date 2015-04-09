function customPlot(plot, handle, x, y, XTickLabel, YTickLabel)
command = [plot, '(x,y)'];
eval(command);
if ~isempty(XTickLabel)
set(handle, 'XTickLabel', XTickLabel);
end
if ~isempty(YTickLabel)
set(handle, 'YTickLabel', YTickLabel);
end
end

