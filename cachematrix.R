## PRogramming Assignement #2

makeCacheMatrix <- function(x = matrix()) {

#this function will create a vector and has 4 functions
#get, set, getinverse and setinverse
#it will also set a list for when we assign values to makeVector.
inverse1=NULL

#set will change the matrix that we are storing.
set <- function(y){
  x <<- y
  inverse1 <<- NULL
}
#get will return the matrix
get <- function() x

#setinverse will store the inverse that we are storing
setinverse <- function(inverse2) {
  inverse1 <<- inverse2
  }

#getinverse will return the inverse matrix
getinverse <- function() inverse1
#list will store the 4 functions needed to assign makeVector
list(set=set, get=get,setinverse=setinverse,getinverse=getinverse)
}
cacheSolve <- function(x, ...) {
# Return a matrix that is the inverse of 'x'
#cachesolve will first check if the inverse matrix is already in memory before creating it
inverse1 <- x$getinverse()
#check if inverse exists, if found return
    if (!is.null(inverse1)){
      message("getting cache data")
      return(inverse1)
      }
#else, get vector and determine inverse
data = x$get()
inverse1 = solve(data, ...)
#set inverse and return
x$setinverse(inverse1)
return(inverse1)
}

#reference- clarifying instructions listed here were a big help with this assignment so I wanted
#to mention them https://github.com/DanieleP/PA2-clarifying_instructions

