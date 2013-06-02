class Palindrome

  def palindrome?(string)
    #string.gsub!(" ,", "") only takes care of space and comma while the other takes care of any non-letter characters
    string = string.gsub(/\W/,'').downcase
    return false if string == ""
    return true if string.length == 1
    letters = string.split("")
    first_letter = letters.shift
    last_letter = letters.pop
    first_letter == last_letter && (letters.none? || palindrome?(letters.join))
  end
end

