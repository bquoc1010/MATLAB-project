% fx = exponential_Regression(a, b);
function fx = exponentialRegression(x, y ) 
    if (length(x) ~= length(y))
        error('D? li?u x và y không cùng kích th??c');
    end
   
    n = length(x);
    A = [n sum(x); sum(x) sum(x.^2)];

    B = [sum(log(y)) sum(x .* log(y))];
    Y = B/A;
    a = exp(Y(1)); b = Y(2);
    if (isnan(a) || isinf(a) || isnan(b) || isinf(b)) 
      error('Exponential regression error: a, b is either NaN or Inf!')
    end
    syms x;
    a = num2str(a);
    b = num2str(b);
    fx = str2func(['@(x)' char(a * exp(b * x))]);
end

