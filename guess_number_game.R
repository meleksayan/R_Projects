
guess_number_game <- function() {
  number1 <- sample(1:100, 1)   # rastgele bir say?? tut (1-100 aras??)
  cnt <- 0    # sayac
  max_tries <- 10   # max deneme say??s??
  repeat {
    if (cnt >= max_tries) {
      cat("Sorry! You've used all your attempts. The correct number was:", number1, "\n")
      break  # Deneme say??s?? bitti, oyun bitir
    }
    
    # Kullan??c??dan tahmin al??rken ge??erli bir say?? girildi??inden emin olal??m
    predict_num <- as.integer(readline(prompt = "Please enter your guess "))
    
    # Ge??erli say?? girilmediyse tekrar isteyelim
    if (is.na(predict_num)) {
      cat("Please enter a valid number.\n")
      next  # Ge??ersiz giri?? oldu??unda d??ng??ye devam et
    }
    
    cnt <- cnt + 1    # sayac artt??r her tahminde
    
    if (number1 == predict_num) {
      cat("Congratulations! You guessed correctly in", cnt, "tries.\n")
      break  # Do??ru tahmin yap??ld??????nda oyunu bitir
    } 
    else if (number1 > predict_num) {
      cat("Please enter a larger number.\n")
    } 
    else {
      cat("Please enter a smaller number.\n")
    }
  }
}

repeat {
  guess_number_game()  # Oyunu ba??lat
  
  again <- as.character(readline(prompt = "Do you want to play again? (y/n): "))
  
  if (tolower(again) != "y") {
    cat("Thanks for playing!\n")
    break
  }
}


