def caesar_cipher(string,shiftFactor)
  letter = 'abcdefghijklmnopqrstuvwxyz'.chars
  string.chars.each_with_index do |char,index|
    #binding.pry
    if letter.include? char.downcase
      indexInLetters = letter.find_index(char.downcase) 
      if indexInLetters + shiftFactor > letter.length - 1
        shiftFactor.times do
          if indexInLetters == 25 
            indexInLetters = 0 
          else 
            indexInLetters += 1 
          end 
          next if indexInLetters == 25 
        end
      else 
        indexInLetters += shiftFactor 
      end 

      if char.match(/[A-Z]/)
        string[index] = letter[indexInLetters].upcase         
      else 
        string[index] = letter[indexInLetters]
      end 
    else 
      next 
    end   
  end 
  string
end 