

###### Simple Calculator###



calculator <- function() {
  x <- as.numeric(readline(prompt = "Please enter the x value:"))
  y <- as.numeric(readline(prompt = "Please enter the y value:"))
  perform <- readline(prompt = "what process do you want to perform:")
  if(perform == "addition"){
    print(x+y)
  }else if(perform == "substraction"){
    print(x-y)
  }else if(perform == "multiplication"){
    print(x*y)
  }else if(perform == "division"){
    print(x / y)
  }else if(perform == "involve"){
    print(x**y)
  }else{
    print("Please try again such a procedure cannot be performed")
  }   
}
calculator()

