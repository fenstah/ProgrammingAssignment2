## Performs and caches matrix inversion.  matrix inversion is usually a costly computation and some benefit 
## could be gained by caching the inverse of an existing matrix rather than computing it repeatedly

## The makeCacheMatrix function creates a special "matrix" object that can cache its inverse.
## contains a private inverse variable for holding the calculation and origMatrix which holds the original matrix information
## also contains public methods for set, get, setInverse, getInverse
makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL  #initialize inverse variable to NULL
    set <- function(y) {    #public set method for initializing variable
        origMatrix <<- y
        inverse <<-NULL
    }
    get <- function() origMatrix    #public get that returns the origMatrix
    setInverse <- function(inv) inverse <<- inv  #public setInverse that sets the private variable to the inv argument
    getInverse <- function() inverse  #public getInverse that returns the private inverse variable
    list(set=set,get=get, setInverse=setInverse,getInverse=getInverse) 
}


## The cacheSolve function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve 
## the inverse from the cache.  Otherwise, it will calculate the inverse matrix and cache it (via makeCacheMatrix)
cacheSolve <- function(x, ...) {
        inverse <- x$getInverse()
        if(!isnull(inverse)) {   # if it has been cached (i.e., not is null) then return cached values and indicate as such
            message("Getting cached inverse matrix")
            return(inverse)     # return the cached inverse matrix
        }
        
        originMatrix <- x$get()         #get the originalMatrix
        inverse <- solve(originMatrix)  #calculate the inverse
        x$setInverse(inverse)           #store the inverse in the makeCacheMatrix object
        inverse
    
        ## Return a matrix that is the inverse of 'x'
}
