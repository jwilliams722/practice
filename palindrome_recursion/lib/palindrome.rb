class Palindrome

  def palindrome?(string)
    #string.gsub!(" ,", "") only takes care of space and comma while the other takes care of any non-letter characters
    string = string.gsub(/\W/,'').downcase
    return true if string == "" || string.length == 1
    letters = string.split("")
    first_letter = letters.shift
    last_letter = letters.pop
    first_letter == last_letter && (letters.none? || palindrome?(letters.join))
  end
end

