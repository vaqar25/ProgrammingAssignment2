## A pair of functions that cache the inverse of the matrix 

## This function creates a special matrix oject that can cache its inverse
makeCacheMatrix <- function(x = matrix()) 

{
  inv <- NULL
  set <- function(y)

{
  x <<- y
  inv <<- NULL

}

  get <- function() x
  setInverse <- function( solvematrix ) inv <<- solveMatrix
  getInverse <- function() inv
  list(set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## This function computes the inverse of the special matrix bt makecachematrix from the above function

cacheSolve <- function(x, ...) 

{
        ## Return a matrix that is the inverse of 'x'

 inv <- x$getInverse()
 if( !is.nill(inv)) 

{

  message("getting cached data")
  return(inv)
}
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
}
