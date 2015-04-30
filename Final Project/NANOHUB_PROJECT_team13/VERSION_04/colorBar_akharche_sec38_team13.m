function colorBar_akharche_sec38_team13( handle, xvals, yvals, colorcode)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
axes(handle)
hold
for ct = 1:length(xvals)
    bar(xvals(ct), yvals(ct), colorcode(mod(ct-1, length(colorcode))+1))
end
hold

end

