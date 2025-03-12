################## sum of the numbers ########################
sum_numbers <- function(){
  last_num <- 100
  num <- 1
  sum_of_num <- 0
  
  while(!(num > last_num)){
    sum_of_num <- sum_of_num + num
    num <- num + 1
  }
  print(paste(" sum of the numbers are = " , sum_of_num))
}

sum_numbers()