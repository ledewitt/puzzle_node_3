# Luke DeWitt
# Puzzle Node - Problem 3

#####  METHODS #####

def choose_word(misspelled, words)
  p "I am here."
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
    p misspelled
    p words
    # I have the misspelled word and an array of candidate words must
    # now figure out my favorite of those and write to an output file.
   
    choose_word(misspelled, words)
  end
end
