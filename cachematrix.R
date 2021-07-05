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


## Calculate the inverse of the matrix returned by makeCacheMatrix function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      matrix <- x$getInverse()
      
      ## Get matrix
      data <- x$get()
      
      # Compute inverse via matrix multiplication
      matrix <- solve(data) %*% data(
      
     ## Set the inverse
     x$setInverse(matrix)
      )
}
