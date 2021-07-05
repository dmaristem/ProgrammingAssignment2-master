## Goal: Cache the inverse of a matrix. 

## The first step is to create a matrix (that will be inverted)
makeCacheMatrix <- function(x = matrix()) {
  
  ## Define the inverse
  i <- NULL # Not NAN or NA
  
  ## Create and set the matrix
  setMatrix <- function(matrix){
    x <<- matrix
    i <<- NULL
  }
  
  ## Matrix getter function
  get <- function(){
    x
  }
  
  ## Set the inverse of the matrix
  setInverse <- function(inverse){
    i <<- inverse
  }
  
  ## Matrix inverse getter function
  getInverse <- function(){
    i
  }
  
  ## Return a list of functions
  list(set = setMatrix, get = get, setInverse = setInverse, getInverse = getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
