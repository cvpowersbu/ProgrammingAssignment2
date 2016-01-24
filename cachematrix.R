## CHRISTOPHER POWERS
##
## The code below writes a pair of functions that cache an inverse matrix

## makeCacheMatrix returns a function list 
## It stores a cache inverse matrix along with the inital matrix
## It has some helping functions including setMatrix, getMatrix, inverseCache, and getInverse

makeCacheMatrix <- function (x = matrix()) {
    #start the cache off as NULL
    cache <- NULL
    
      setMatrix <- function (initialValue) {
        x <<- initialValue
        cache <<- NULL
      }
    
      getMatrix <- function() x
      cacheInverse <- function (solve) cache <<- solve
    
      getInverse <- function() cache
      
      list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## obtain the matrix, find the inverse, and cache it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse <- x$getInverse()
    input <- x$getMatrix()
    inverse <- solve(input)
    x$cacheInverse(inverse)
  
    inverse
}
