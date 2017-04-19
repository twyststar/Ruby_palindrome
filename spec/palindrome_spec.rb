require('rspec')
require('palindrome')

describe('String#palindrome?') do
  it('takes an input word and decides if it is a palindrome') do
    expect('racecar'.palindrome?).to(eq("That's a palindrome"))
  end
  it('takes input words and decides if they are a palindrome') do
    expect('si racecar is'.palindrome?).to(eq("That's a palindrome"))
  end
  it('takes input words with odd spacing/capitals and decides if they are a palindrome') do
    expect('Do geese see God'.palindrome?).to(eq("That's a palindrome"))
  end
end
