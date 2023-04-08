%% Robotkarok és mobilis robotok HF
% Floch Kristóf I8SNRG

function Grid = create_grid(lower_bound, ...
    upper_bound, precision)
%CREATE_GRID Creates a n-dimensional grid with the given precision between
% the predefined bounds
% Returns a matrix with precision^n rows each row corresponding to one grid
% point


G=cell(1, numel(lower_bound));
for i=1:numel(lower_bound)
    G{i}=linspace(lower_bound(i), upper_bound(i), precision);
end


Grid = cell(1,numel(G));
[Grid{:}] = ndgrid(G{:});
Grid = cellfun(@(X) reshape(X,[],1),Grid,'UniformOutput',false);
Grid = horzcat(Grid{:});
end

