

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## This function creates a special "matrix" object that can cache its inverse;
## 1.Create a matrix (a matrix include row & column) named 'X';
## 2.Assign NULL to vector'inv'(a list, can a row or a column);
## 3.set the value of the matrix - function that changes vector from the main function;
## 4.get the value of the matrix - function that returns vector x stored in the main function;
## 5.setinverse - set the value of the inverse of the matrix;
## 6.getinverse - get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    inve <- NULL
    set <- function(y){
          x <<- y
          inve <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inve <<- inverse
    getinverse <- function() inve
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function - cacheSolve
## 1.Return a matrix that is the inverse of 'x';
## 2.Create a vector 'inve' - assigned by function 'getinverse()' from makeCacheMatrix
## 3.Checks to see if the inverse value has already been calculated. 
## 4.If so, it gets the solve value from the cache , return the inverse vale and skips the computation. 
## 5.Otherwise, it uses the getinvere function to get the data and sets the value of the inverse matrix in the cache via the setinverse function.


cacheSolve <- function(x, ...) {
  inve <- x$getinverse()
  if(!is.null(inve)){
        message("getting cached data")
        return(inve)
  }
  data <- x$get()
  inve <- solve(data)
  x$setinverse(inve)
  inve
}



