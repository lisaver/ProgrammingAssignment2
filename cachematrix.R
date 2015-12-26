## makeCacheMatrix and cacheSolve for a inverting a matrix
## functions do: 

## makeCacheMatrix sets and gets the matrix and the Solve function of the matrix that needs to be inverted,
## it retuns a list of 4 functions.

makeCacheMatrix <- function(x = matrix()) {
    s <- NULL
    
    set <- function(y) {
      x <<- y
      s <<- NULL
    }
    
    get <- function() {
      x
    }
     
    setSolve <- function(solve) {
      s <<- solve
    }
    
    getSolve <- function() {
      s
    }
    
    list( set = set, get = get, setSolve = setSolve, getSolve = getSolve)

}

## cacheSolve returns the inverted matrix,
## by either getting the value via getSolve of makeCacheMatrix or determining it.
## secondly it defines setSolve it is was not defined for s. 

cacheSolve <- function(x, ...) {
  s <- x$getSolve()
  
  if (!is.null(s)) {
    return(s)
  }
  else {
    data <- x$get()
    s <- solve(data)
    x$setSolve(s)
    return(s) 
  }
  
  ## Return a matrix that is the inverse of 'x'
}
