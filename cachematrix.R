# week 3 
#Assignment 2: Caching the Inverse of a Matrix
# Goal: write a function to cache potentially time-consuming computations.

#Write the following functions:
#1)    makeCacheMatrix: This function creates a special "matrix" object 
#		that can cache its inverse.



makeCacheMatrix <- function(sqMatrix = matrix()) {
    invMatrix <- NULL 		## set invMatrix to null
    set <- function(y) {	## creates set function, takes one variable
        sqMatrix <<- y		## lexical scoping
        invMatrix <<- NULL	## lexical scoping
    }
    get <- function() sqMatrix 	## creates get function, and uses the 
						##lexical scoping variable
    setinverse <- function(inverse) invMatrix <<- inverse ##a function that defines its input as lexical
    getinverse <- function() invMatrix
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}
