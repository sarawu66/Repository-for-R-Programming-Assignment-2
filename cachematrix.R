## This code is used to cache the inverse of a matrix.

## This function creates a special "matrix", by which you can set a value of the matrix, get the value of the matrix,set the value of its inverse, and get the value of its inverse.
makeCacheMatrix <- function(x = matrix()) {
        makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
            x<<-y
            m<<-NULL
        }
        get<-function()x
        setinverse<-function(inverse)m<<-inverse
        getinverse<-function()m
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
    }
    
    
## This following function calculates the inverse of the matrix created with the above function
    
cacheSolve <- function(x, ...) {
        m<-x$getinverse()
        if(!is.null(m){
            message("getting cached data")
            return(m)
        }
        data<-x$get()
        m<-solve(data,...)
        x$setinverse(m)
    }



