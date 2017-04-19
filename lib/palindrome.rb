class String
  define_method(:palindrome?) do
    word = self
    word.gsub!(/\s+/, '')
    word.downcase!()
    if word == word.reverse()
      "That's a palindrome"
    else
      "Nope"
    end
  end
end
