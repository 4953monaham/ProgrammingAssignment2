# week 3 
#Assignment 2: Caching the Inverse of a Matrix
# Goal: write a function to cache potentially time-consuming computations.

#2)    cacheSolve: This function computes the inverse of the special "matrix" 
#		returned by makeCacheMatrix above. If the inverse has already been
#		calculated (and the matrix has not changed), then the cachesolve 
#		should retrieve the inverse from the cache.


cacheSolve <- function(sqMatrix, ...) {  #creates function called cachcsolve
    inv <- sqMatrix$getinverse() 	     #calles the getinverse funciton
    if(!is.null(invMatrix)) {			# checks for values in invMatrix
        message("getting cached data.")	#returns quote
        return(invMatrix)			#returns inverse matrix
    }
    data <- sqMatrix$get()			# gets sqMatrix
    invMatrix <- solve(data)			# takes the inverse	
    sqMatrix$setinverse(invMatrix)		# sets invmatrix

    invMatrix					# displays the Matrix
}

