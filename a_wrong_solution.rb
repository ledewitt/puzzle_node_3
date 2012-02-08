# Luke DeWitt
# Puzzle Node - Problem 3

#####  METHODS #####

def longest_matching_string(misspelled, candidate)
  chars = misspelled.chars.to_a
  
  chars.size.times do |l|
    chars.each_cons(misspelled.size - l) do |m|
      if candidate.include? m.join
        return m.join.size
      end
    end
  end
end   

def choose_word(misspelled, words)
  # TO DO: For each test case output a single line with the word that has
  # the longest common sub-sequence with the search query word.
  
  matching_string_size = [0,0]
  
  matching_string_size[0] = longest_matching_string(misspelled, words[0]) 
  matching_string_size[1] = longest_matching_string(misspelled, words[1])
  
  # p matching_string_size
  
  if matching_string_size[0] < matching_string_size[1]
    return words[1]
  else
    return words[0]
  end
end

#####  MAIN BODY OF CODE #####

open ("INPUT.txt") do |input|
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
   
    choosen_word = choose_word(misspelled, words)
    puts choosen_word
  end
end
