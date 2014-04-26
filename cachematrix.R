## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makecacheMatrix <- function(x = matrix()) {
        m <- NULL
        #set <- function(y) {
        #       x <<- y
        #      m <<- NULL
        #}
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}



## Write a short comment describing this function

cacheSolve <- function(x) {
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        ee <- x$get()
        
        m <- solve(ee)
        x$setsolve(m)
        m
}

