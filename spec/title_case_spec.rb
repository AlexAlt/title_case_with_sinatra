require('rspec')
require('title_case')

describe('String#title_case') do
  it("It Capitalizes the First Letter of a Word") do
    expect(("beowulf").title_case()).to(eq("Beowulf"))
  end
end
  describe('String#title_case') do
    it("it capitalizes the first letter of words in a
    multiple word string") do
      expect(("beowulf story").title_case()).to(eq("Beowulf Story"))
  end
end

describe('String#title_case') do
  it("Does't capitalize certain words - and, or, the etc.. ") do
    expect(("beowulf and the story").title_case()).to(eq("Beowulf and the Story"))
  end
end

describe('String#title_case') do
    it("Always capitalize the first letter of first word in a string") do
      expect(("the beowulf").title_case()).to(eq("The Beowulf"))
  end
end

#no errors but no method
describe('String#title_case') do
  it("Ignores non-letter characters") do
    expect(("the beowulf 1 story!").title_case()).to(eq("The Beowulf 1 Story!"))
  end
end

#no error but no method also..
describe('String#title_case') do
  it("Lower case letters if capitalized and not first letter") do
    expect(("BEOWULF STORY").title_case()).to(eq("Beowulf Story"))
  end
end
