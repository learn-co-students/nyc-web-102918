require_relative '../program'
# 1. True
# 2. False
# 3. Edge Case - an uncommon scenario that should still pass through the code
  # YOU!
  # Clients / Users <= Noobies
  # Testers / QA
  # Hackers!!! Malicious people!!! White Hat / Black Hat / Grey Hat
describe "is_palindrome?" do
  it "should return true if the word is a palindrome" do
    expect(is_palindrome?("racecar")).to eq(true)
    expect(is_palindrome?("poop")).to eq(true)
  end

  it "should return false if the word is not a palindrome" do
    expect(is_palindrome?("palindrome")).to eq(false)
    expect(is_palindrome?("anything")).to eq(false)
    expect(is_palindrome?("beef")).to eq(false)
  end

  # space complexity
  it "should return true if the palindrome has whitespace" do
    expect(is_palindrome?("lion oil")).to eq(true)
    expect(is_palindrome?("nurses run")).to eq(true)
    expect(is_palindrome?("poop poop")).to eq(true)
  end

  # Case sensitivity
  it "should return true if the palindrome has upper/lower cases" do
    expect(is_palindrome?("RaceCar")).to eq(true)
    expect(is_palindrome?("Poop")).to eq(true)
  end

  # Punctuation
  it "should return true if the palindrome has a comma" do
    expect(is_palindrome?("a man a plan a canal, Panama")).to eq(true)
  end

  it "should return false if the palindrome has a ?!." do
    expect(is_palindrome?("a man a plan a canal, Panama?")).to eq(false)
    # a man a plan a canal, Panama
  end

  # Number!
  it "should throw _______ if you pass in a non-String value" do
    # TypeError
    # ArgumentError
    # SyntaxError
    # TypeConversionError
    expect{ is_palindrome?(101) }.to raise_error(ArgumentError)
    expect{ is_palindrome?(true) }.to raise_error(ArgumentError)
    expect{ is_palindrome?({}) }.to raise_error(ArgumentError)

  end
end
