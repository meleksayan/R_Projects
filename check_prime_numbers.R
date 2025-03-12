################ Finding a prime number ########################
check_prime_numbers <- function(){
  # Kullan??c??dan bir say?? al
  number2 <- as.integer(readline(prompt = "Please enter a number: "))
  
  # Ge??ersiz giri?? kontrol??
  if (is.na(number2)) {
    print("Invalid input, please enter a valid number.")
    return()  # Ge??ersiz giri?? durumunda fonksiyonu sonland??r
  }
  
  # Say?? 1 veya k??????kse asal de??ildir
  if (number2 <= 1) {
    cat(number2, "is not a prime number.\n")
    return()  # Fonksiyonu sonland??r
  }
  
  # 2'yi ??zel olarak kontrol et
  if (number2 == 2) {
    cat(number2, "is a prime number.\n")
    return(TRUE)
    
  }
  
  # Asall??k kontrol??
  is_prime <- TRUE  # Ba??lang????ta asal kabul et
  for (i in 2:(number2 - 1)) {
    if (number2 %% i == 0) {
      is_prime <- FALSE  # Asal de??ilse flag'?? de??i??tir
      cat(number2, "is not a prime number.\n")
      break  # D??ng?? sonland??r
    }
  }
  
  if (is_prime) {
    cat(number2, "is a prime number.\n")
  }
}

# Fonksiyonu ??al????t??r
check_prime_numbers()