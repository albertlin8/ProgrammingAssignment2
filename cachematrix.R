## This script contains two functions, makeCacheMatrix
## and cacheSolve. makeCacheMatrix takes an input matrix x
## and makes a special "matrix" object that can cache its inverse.
## cacheSolve computes the inverse of the special matrix returned by makeCacheMatrix
## If inverse has already been calculated, cacheSolve will retrieve the inverse from the cache

## makeCacheMatrix function

makeCacheMatrix <- function(x = matrix()) {
      cache_inv <- NULL
      cache_inv <- solve(x)
      y <<- list(input = x, cached = cache_inv)
      y
}

## cacheSolve function

cacheSolve <- function(y, ...) {
      cache1 <- y$cached
      if(!is.null(cache1)){
            message("Retrieved cached data")
            return(cache1)
      }
      
      data1 <- solve(y$input)
      message("Here is the calculated inverse")
      data1
}