#write your code here
def is_vowel char
    char == 'a' or char == 'e' or char == 'i' or char == 
            'o' or char == 'u'
end

def translate_word word
    
    if is_vowel word[0]
        word += "ay"
    else
        substr = ""
        n = 0
        
        while !is_vowel word[n] or (word[n] == 'u' and substr[n-1] == 'q')
            substr += word[n]
            n += 1
            if substr[-2..-1] == 'qu'
                break
            end
        end
        
        word = word[n..-1] + substr + "ay"
    end
end

def translate string
    array = string.split(" ")
    
    array.length.times do |n|
        array[n] = translate_word array[n]
    end
    
    array.join(" ")
end
