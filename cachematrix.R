## Performs and caches matrix inversion.  matrix inversion is usually a costly computation and some benefit 
## could be gained by caching the inverse of an existing matrix rather than computing it repeatedly

## The makeCacheMatrix function creates a special "matrix" object that can cache its inverse.
## contains a private inverse variable for holding the calculation and origMatrix which holds the original matrix information
makeCacheMatrix <- function(x = matrix()) {

}


## The cacheSolve function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve 
## the inverse from the cache.  Otherwise, it will calculate the inverse matrix and cache it (via makeCacheMatrix)
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
