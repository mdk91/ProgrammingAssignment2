## Put comments here that give an overall description of what your
## functions do
# These functions allow us to save time in our computations, in this case of matrices and finding their inverse. By using these functions, we can quickly revisit the matrix without having to #recalculate it. The code will simply retrieve the prior calcuation #when it is called.
## Write a short comment describing this function
#This function establishes the value of both the matrix and the inverse
makeCacheMatrix <- function(x = matrix()) {

}
#my functions are below :)

## Write a short comment describing this function
#This function shows that the matrix was cached by 'getting' the inverse when called, without all the addition/previous computations.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}





makeCacheMatrix <- function(x = matrix()){
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() {x}
        setInverse <- function(inverse) {inv <<- inverse}
        getInverse <- function() {inv}
        list(set=set, get=get, setInverse =setInverse, getInverse=getInverse)
}

cacheSolve <- function(x,...) {
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
