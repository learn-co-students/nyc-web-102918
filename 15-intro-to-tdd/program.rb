require 'pry'

# awesome code goes here
# word that is the exact same backwards
# a word, phrase, or sequence that reads the same backward as forward
#, e.g., madam
  # or
# nurses run
# Zordon => Project Manager
def is_palindrome?(word)
  # change delete to use a regex
  if word.class != String
    raise ArgumentError
  end
  
  changed_word = word.delete(" ").downcase.delete(",") # reassignment
  changed_word.reverse == changed_word
end
