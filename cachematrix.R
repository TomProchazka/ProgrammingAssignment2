## There are two functions, which cooperate to compute inverse of matrix
## or if inverse of current matrix was already computed and stored to cache
## use value from the cache

## This function cache of matrix + compute and cache inverse of matrix. Return value is inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
        ## cache current matrix to m
        m<<-x
        ## compute and cache inverse of matrix to s
        s<<-solve(x)
        ##return value is inverse of matrix
        return(s)
}


## This function compare current matrix with value in cache
## If matrix is identical to matrix in cache, return inverse matrix from cache
## If matrix is not identical, call function makeCacheMatrix
## insert new values to cache and return new inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## compare current matrix with the matrix in the cache
        ## if there are identical, return value of inverse matrix from cache
        if(identical(x,m)) {
                return(s)
        } else {
                ## In other case call function makeCacheMatrix, parameter x is the current matrix
                ## The value of inverse matrix will return function makeCacheMatrix
                makeCacheMatrix(x)
        }  
}
