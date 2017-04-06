# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  diff.length <- abs(length(a) - length(b))
  diff.length.string <- paste("The difference in lengths is", diff.length)
  return(diff.length.string)
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3,4), 1:10)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <-function(c, d) {
  diff <- length(c) - length(d)
  if(diff > 0) {
    diff.string <- paste("Your first vector is longer by", diff, "elements")
  } else {
    diff.string <- paste('Your second vector is longer by', -diff, 'elements')
  }
  return(diff.string)
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1,2,3,4), 1:10)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer