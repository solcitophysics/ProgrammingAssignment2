cacheSolve <- function(x, ...) {
        inv <- x$getinve()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinve(inv)
        inv
}


