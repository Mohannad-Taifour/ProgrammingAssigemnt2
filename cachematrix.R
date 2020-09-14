## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y)
  {
    x <<- y
    inv <<- NULL
    
  }
  get <- function () {x}
  setInvers <- function(inverse) {inv <<- inverse}
  getInverse <- function () {inv}
  list(set = set, get = get, setInvers = setInvers, getInverse = getInverse)

}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  # in case the matrix in not empty 
  if (! is.null(inv))
  {
    message("getting chched data ")
    return (inv)
  } # end if 
  
  mat <- x$get()
  inv <- solve(mat, ...)  # solve function to solve the inverse 
  x$setInvers(inv)
  inv
        
}
## end fi function cachSolve
