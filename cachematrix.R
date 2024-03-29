## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special 'matrix' object that can cache 
## its inverse

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y) {
  x <<- y
  m <<- NULL
}
get <- function() x
setinv <- function(inverse) m <<- inverse
getinv <- function() m
list(set = set, get=get, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function
## This function computes the inverse of the special 'matrix' returned
## yby the makeCacheMatrix above. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)){
    message("getting cache")
    return(m)
  }
  data <- x$get()
  m <- setinv(data, ...)
  x$setinv(m)
  m
}
