## Put comments here that give an overall description of what your functions do
## Calculates and Caches the inverse of a matrix for quicker retrieval

## Write a short comment describing this function
## Creates an object that will cache the inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {
    y<<-x
    inv<<-NULL
}

## Write a short comment describing this function
## Examines the matrix cache to find if the inverse of the matrix has been stored. If the inverse is not stored, the inverse of a matrix is calculated and stored in the cache.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    if(!is.null(inv)){
        # retrieve cached data if present
        message("retrieving cached data")
        return(inv)
    } else {
        # Calculate inv if it has not been created
        inv<<-solve(x)
        inv
    }
}
