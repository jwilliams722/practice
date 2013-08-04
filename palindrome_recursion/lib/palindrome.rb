class Palindrome

  def palindrome?(string)
    string = string.to_s.gsub(/\W/,'').downcase
    return true if string == "" || string.length == 1
    letters = string.split("")
    first_letter = letters.shift
    last_letter = letters.pop
    first_letter == last_letter && (letters.none? || palindrome?(letters.join))
  end
end

