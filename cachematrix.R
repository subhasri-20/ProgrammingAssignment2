## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}

library(MASS)
makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y) {
    x<<-y
    inv<<-NULL
  }
  get<-function()x
  setinv<-function(inverse)inv<<-inverse
  getinv<-function(){
    inver<-ginv(x)
    inver%*%x
  }
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

f<-makeCacheMatrix(matrix(1:8,2,4))
f$get()
inv<-x$getinv()
if(!is.null(inv))
  message("getting cached data!")
return(inv) ##returns inverse value
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
data<-x$get()
inv<-solve(data)
inv<-solve(data)
f$setinv(inv) 
inv  ##return a matrix that is the inverse of 'X'

f<-makeCacheMatrix(matrix(1:8,2,4))
f$get()
