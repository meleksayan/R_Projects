
####################### Check a  number odd or even #######################
check_even_odd <- function() {
  # get a number from the user
  number1 <- as.integer(readline(prompt = "Please enter a number: "))
  
  # Invalid entering
  if (is.na(number1)) {
    cat("Invalid input, please enter a valid number.\n")
  } else {
    # Calculate mode
    remain <- number1 %% 2
    
    # Result
    if (remain == 0) {
      cat("This is an even number.\n")
    } else {
      cat("This is an odd number.\n")
    }
    print("exiting the program....")
    
  }
}

# Call the function
check_even_odd()























