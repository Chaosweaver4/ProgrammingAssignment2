
## Creates a matrix that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = inv,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function computes the inverse of the matrix from above or gets an already
## cached inverse.

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- mean(data, ...)
  x$setmean(m)
  inv
}
