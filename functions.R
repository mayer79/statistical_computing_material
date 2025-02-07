#===============================================================
# Some useful functions
#===============================================================


# Greatest common divisor 
# a, b: positive integers
gcd <- function(a, b) {
  stopifnot(
    length(a) == 1, 
    length(b) == 1,
    a >= 1,
    b >= 1,
    a == trunc(a),  # check if integer
    b == trunc(b),
    max(a, b) < 2^50
  )
  
  while (b > 0) {
    temp <- b
    b <- a %% b
    a <- temp
  }
  return(a)
}

# Example
# gcd(6, 8)

# Least common multiple
# a, b: positive integers
lcm <- function(a, b) {
  div <- gcd(a = a, b = b)
  return(a * b / div)
}

# Example
# lcm(45, 18)
