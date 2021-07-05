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

## A pair of functions that cache the inverse of a matrix


## Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function( m = matrix() ) {
  
  ## Initialize the inverse property
  i <- NULL
  
  ## Method to set the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ## Method the get the matrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  ## Method to set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ## Method to get the inverse of the matrix
  getInverse <- function() {
    ## Return the inverse property
    i
  }
  
  ## Return a list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


