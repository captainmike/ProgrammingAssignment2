## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# `makeCacheMatrix` stores a "matrix" and its inverted counterpart;
# It is implemented using a list which contatins a function to
# 1.  set the value of the matrix
# 2.  get the value of the matrix
# 3.  set the value of the inverted matrix
# 4.  get the value of the inverted matrix

makeCacheMatrix <- function(x = matrix()) {
  inverted <- NULL
  get <- function() x
  set <- function(y) {
    x <<- y
    inverted <<- NULL
  }
  setInverted <- function(newInverted) inverted <<- newInverted
  getInverted <- function() inverted
  list(set = set, get = get, getInverted = getInverted, setInverted = setInverted)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
