## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function takes a square matrix and calculates an inverse.

makeCacheMatrix <- function(x = matrix()) {
    inver <- NULL
  set <- function(y) {
         x <<- y
         inver <<- NULL
  }
  get <- function() x
  set_inverse <- function(inverse) inver <<- inverse
  get_inverse <- function()inver
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## Write a short comment describing this function

## This function is used to retrieve the cache data. 

cacheSolve <- function(x, ...) {
  inver <- x$get_inverse()
  if(!is.null(inver)) {
    message("getting cached data")
    return(inver)
  }
  data <- x$get()
  inver <- solve(data, ...)
  x$set_inverse(inver)
  inver
}
