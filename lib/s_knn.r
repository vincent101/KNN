# eucliden distance between to vecter
dist_eu <- function(x,y){
    res <- sqrt(sum((x-y)^2))
    return(res)
}

#dyn.load("distance.so")
## tangent distance
#dist_tan <- function(imageOne,imageTwo) {
  #out <- .C("distance",
    #img1=as.double(imageOne),
    #img2=as.double(imageTwo),
    #dist=as.double(0))
  #return(out$dist)
#}
