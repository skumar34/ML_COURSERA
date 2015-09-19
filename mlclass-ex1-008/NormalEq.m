%% ======================= Part 2: Plotting =======================
fprintf('Plotting Data ...\n')
data = load('data.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples

% Plot Data
% Note: You have to complete the code in plotData.m
plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =================== Part 3: Gradient descent ===================
fprintf('Running Gradient Descent ...\n')

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
%theta = zeros(2, 1); % initialize fitting parameters

theta = normalEqn(X, y);
fprintf('Theta found by Normal Equation: ');
fprintf('%f %f \n', theta(1), theta(2));
fprintf('Final Cost: %f\n',computeCost(X, y, theta));
