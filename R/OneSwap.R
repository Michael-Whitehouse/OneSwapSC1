# Check if a vector can be sorted with at most one swap function

#' Title
#'
#' @param x a numeric vector
#'
#' @return True if vector can be ordered with at most one swap
#' @export
#'
#' @examples  oneswap(c(1,2,3,4,5))
#'
#'
#'
oneswap <- function(x) {
  for (i in (1:length(x))){
    for (j in (i:length(x))){
      y<-x
      y[j]<-x[i]
      y[i]<-x[j]
      if (isTRUE(all.equal(sort(x),y))){
        return(TRUE)
      }
    }
  }
  return(FALSE)
}
