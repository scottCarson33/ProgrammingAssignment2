## Put comments here that give an overall description of what your
## functions do

## creates special matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## checks if the cache has an inverted matrix, if not inverts it

cacheSolve <- function(x, ...) {
         i <- x$getinverse()
        if(!is.null(i)) {
          print("this data is cached")
          return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
