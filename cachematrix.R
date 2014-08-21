## Put comments here that give an overall description of what your
## functions do
# t<-makeCacheMatrix()
# t$set(matrix(1:6,3,3)to store a matrix
# cacheSolve(t)                                                                             
                                                                             When I run cacheSolve(a) I get Error in as.vector(x, mode) : cannot coerce type 'closure' to vector of type 'any'

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
