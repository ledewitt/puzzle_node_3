# Luke DeWitt
# Puzzle Node - Problem 3

#####  METHODS #####

def choose_word(misspelled, words)
  # TO DO: For each test case output a single line with the word that has
  # the longest common sub-sequence with the search query word.
  
  # First find all the subsequences of the misspelled word.
  
  p misspelled
  # p misspelled.size
  
  chars = misspelled.chars.to_a # Turn our string into an array of characters
  
  chars.size.times do |l|
    # p misspelled[f,misspelled.size]
    chars.each_cons(misspelled.size - l) do |m|
      p m.join
    end
  end
end

#####  MAIN BODY OF CODE #####

open ("SAMPLE_INPUT.txt") do |input|
  test_cases = input.gets.to_i       # Pull the number of cases from top of file
  test_cases.times do
    input.gets                       # Remove blank line
    misspelled = input.gets.strip    # Get the misspelled word
    words      = [ ]                 # Set up an array for our candidate words
    2.times do
      words << input.gets.strip      # Put the candidate words into the array
    end
    # p misspelled
    # p words
    # I have the misspelled word and an array of candidate words must
    # now figure out my favorite of those and write to an output file.
   
    choose_word(misspelled, words)
  end
end
