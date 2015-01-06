require('rspec')
require('anagram')

describe('Array#anagram') do
  it("returns the matched possibilities of the base word") do
    expect((["cat"]).anagram(["act", "rat", "tac", "hat"])).to(eq(["act", "tac"]))
  end
end


#if sorted possiblities eq. sorted base word, join and push matched possiblilities
