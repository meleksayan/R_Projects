###################################### Hangman Game####################################################

hangman <- function() {
  words <- c("elephant", "bird", "cow", "ship", "damage", "cloud", "computer", "sea", "mouse", "make", "cake")
  
  
  word_to_guess <- sample(words, 1)
  
  number_of_correct_guess <- 0
  number_of_wrong_guess <- 0
  
  guessed_word <- strrep("_", nchar(word_to_guess))
  
  max_wrong_guesses <- 6
  
  cat("Are you ready for the game?\n")
  cat("The word: ", guessed_word, "\n")
  
  hangman_state <- c(
    " _______ \n |     | \n       | \n       | \n       | \n       | \n_______|",  # no wrong guesses
    " _______ \n |     | \n O     | \n       | \n       | \n       | \n_______|",  # 1 wrong guess
    " _______ \n |     | \n O     | \n |     | \n       | \n       | \n_______|",  # 2 wrong guesses
    " _______ \n |     | \n O     | \n/|     | \n       | \n       | \n_______|",  # 3 wrong guesses
    " _______ \n |     | \n O     | \n/|\\    | \n       | \n       | \n_______|",  # 4 wrong guesses
    " _______ \n |     | \n O     | \n/|\\    | \n/      | \n       | \n_______|",  # 5 wrong guesses
    " _______ \n |     | \n O     | \n/|\\    | \n/ \\    | \n       | \n_______|"   # 6 wrong guesses (game over)
  )
  
  while (number_of_wrong_guess < max_wrong_guesses && number_of_correct_guess < nchar(word_to_guess)) {
    
    guess <- readline(prompt = "Please enter a letter: ")
    
    # Make sure that only one letter is entered
    if (nchar(guess) == 1) {
      
      # if the prediction is correct
      if (grepl(guess, word_to_guess)) {
        number_of_correct_guess <- number_of_correct_guess + 1 
        
        # Place the correct letter
        for (i in 1:nchar(word_to_guess)) {
          if (substr(word_to_guess, i, i) == guess) {
            substr(guessed_word, i, i) <- guess
          }
        }
        cat("Congratulations! So far: ", guessed_word, "\n")
      } 
      
      # prediction is wrong
      else {
        number_of_wrong_guess <- number_of_wrong_guess + 1 
        cat("Wrong guess! Wrong guesses so far: ", number_of_wrong_guess, "\n")
        cat(hangman_state[number_of_wrong_guess], "\n")
      }
    } 
    else {
      cat("Please enter only one letter.\n")
    }
    
    # If he guessed the word correctly
    if (number_of_correct_guess == nchar(word_to_guess)) {
      cat("Congratulations, you found the correct word: ", word_to_guess, "\n")
      break
    }
    
    # If the number of incorrect predictions reaches 6, 
    if (number_of_wrong_guess == max_wrong_guesses) {
      cat("Unfortunately, the hangman is complete. The correct word was: ", word_to_guess, "\n")
      cat(hangman_state[max_wrong_guesses], "\n")  # Final hangman state
     
    }
  }
}

# call the function 
hangman()



