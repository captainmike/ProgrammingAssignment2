## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# `makeCacheMatrix` stores a "matrix" and its inverse counterpart;
# It is implemented using a list which contatins a function to
# 1.  set the value of the matrix
# 2.  get the value of the matrix
# 3.  set the value of the matrix inverse
# 4.  get the value of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  get <- function() x
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  setInverse <- function(newInverse) inverse <<- newInverse
  getInverse <- function() inverse
  list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function
# `cacheSolve` calculates and stores the result of special
# matrix created by 'makeCacheMatrix'. It caches the matrix inverse
# in this special matrix so it does not calculate it again
# unless the matrix is updated.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if (!is.null(inverse)) {
    # message("getting from cache")
    return(inverse)
  }
  inverse <- solve(x$get())
  x$setInverse(inverse)
  inverse
}
