## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
