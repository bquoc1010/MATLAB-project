function df = approximate_derivative_at_point(x, y, x_val, method)
    % Hàm để tính đạo hàm gần đúng của dãy số y tại giá trị x_val
    % sử dụng phương pháp tiến, lùi hoặc trung tâm
    
    % Tìm chỉ số i tương ứng với giá trị x_val
    [~, index] = min(abs(x - x_val));
    
    % Tính đạo hàm gần đúng tại x_val
    switch method
        case 'forward'
            % Phương pháp tiến
            if index < length(x)
                df = (y(index + 1) - y(index)) / (x(index + 1) - x(index));
            else
                % Nếu x_val là giá trị cuối cùng của x, giả sử giá trị cuối cùng giống với giá trị trước đó
                df = (y(index) - y(index - 1)) / (x(index) - x(index - 1));
            end
        case 'backward'
            % Phương pháp lùi
            if index > 1
                df = (y(index) - y(index - 1)) / (x(index) - x(index - 1));
            else
                % Nếu x_val là giá trị đầu tiên của x, giả sử giá trị đầu tiên giống với giá trị sau đó
                df = (y(index + 1) - y(index)) / (x(index + 1) - x(index));
            end
        case 'central'
            % Phương pháp trung tâm
            if index > 1 && index < length(x)
                df = (y(index + 1) - y(index - 1)) / (x(index + 1) - x(index - 1));
            else
                % Nếu x_val là giá trị ở mép trái hoặc phải, giả sử giá trị cuối cùng giống với giá trị trước đó
                df = (y(index) - y(index - 1)) / (x(index) - x(index - 1));
            end
    end
end
