range = 1:100;
matRange = [1:10];
toxWeight = range;
costWeight = range;
toxValues = zeros(length(costWeight), length(toxWeight));
for index = 1:length(costWeight)
for index2 = 1:length(toxWeight)
[~,~,tmp] = DoubleMinAttr(mt(matRange,:), cost(matRange), costWeight(index), tox(matRange), toxWeight(index2), 1.33, 2, 100);
toxValues(index2, index) = tmp;
clear tmp;
end
end
mesh(costWeight, toxWeight, toxValues);
xlabel('Cost Weight');
ylabel('Toxicity Weight');
zlabel('Toxicity');

figure
contourf(costWeight, toxWeight, toxValues);
xlabel('Cost Weight');
ylabel('Toxicity Weight');
zlabel('Toxicity');