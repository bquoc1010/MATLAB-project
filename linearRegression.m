% a = [1 2 3 4 5 6 7 8 9];
% b = [1 1.5 2 3 4 5 8 10 13];
% y = linear_Regression(a, b);
% disp(y);
function fx = linearRegression(x, y) 
    if (length(x) ~= length(y))
        error('Du lieu x và y không cùng kích thuoc');
    end
    n = length(x);
    a = (n * sum(x .* y) - sum(x) * sum(y)) / (n * sum(x .^ 2) - sum(x) ^ 2);
    b = mean(y) - a * mean(x);

    syms x;
    a = num2str(a);
    b = num2str(b);
    fx = str2func(['@(x)' char(a * x + b)]);
    disp(fx);
end

