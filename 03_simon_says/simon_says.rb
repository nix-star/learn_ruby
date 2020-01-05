#write your code here
def echo string
    string
end

def shout string
    string.upcase
end

def repeat string, n=2
    array = []
    n.times do
        array.push(string)
    end
    array.join(" ")
end

def start_of_word string, n
    string[0..n-1]
end

def first_word string
    string.split(" ")[0]
end

def titleize string
    array = string.split(" ")
    array.length.times do |x|
        array[x] = array[x].capitalize
        if array[x] == 'And' or array[x] == 'The' or array[x] == 'Over'
            if x > 0
                array[x] = array[x].downcase
            end
        end
    end
    array.join(" ")
end
