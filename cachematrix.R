## A special thing to store the matrix and its inverse is known
##if its known

makecacheMatrix <- function(x = matrix()) {
##"m" designates the inverse matrix, if it is set NULL
##inverse is not calcualated        
        m <- NULL
        #set <- function(y) {
        #       x <<- y
        #      m <<- NULL
        #}
        get <- function() x      
##get allows to retrieve matrix x        

        setsolve <- function(solve) m <<- solve
##setsolve is a function for setting the value "m"
##'<<-' means 'above' or 'level up', function takes value 'solve' and then
##sets the value of 'm' that is one level up

        getsolve <- function() m

##For retrieving if inverse has calculated or not

        list(get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}




##Actual function to calculate inverse matrix (if it has not been done)
cacheSolve <- function(x) {
##"m" gets here its value from makecacheMatrix
        m <- x$getsolve()
        if(!is.null(m)) {
##if m is not NULL it means it has been calculated
                message("getting cached data")
                return(m)
        }
##"ee" is used as a matrix for calculations
##x$get() command retrieve x from makecacheMatrix
##ee has same value as matrix under investigation

        ee <- x$get()
##Actual solving of matrix
        m <- solve(ee)
##Since m is inverse vector (and not NULL) we can add inverse vector to
##special thing name makecacheMatrix
        x$setsolve(m)
        m
}

