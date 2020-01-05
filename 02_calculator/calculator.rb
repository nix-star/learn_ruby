#write your code here
def add x, y
    x + y
end

def subtract x, y
    x - y
end

def sum array
    sum = 0
    array.each do |x|
        sum += x
    end
    sum
end

def multiply x, y
    x * y
end

def multiply_array array
    product = 1
    array.each do |x|
        product *= x
        if product == 0
            break
        end
    end
    product
end

def power x, y
    x ** y
end

def factorial x
    factorial = 1
    for n in 1..x do
        factorial *= n
    end
    factorial
end
