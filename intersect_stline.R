intersect_stline <- function(x, y){
  if(class(x) != "stline"){
    stop("x must be of class 'stline'")
  }
  if(class(y) != "stline"){
    stop("y must be of class 'stline'")
  }

  A <- matrix(c(x$a, y$a, x$b, y$b), nrow = 2)
  determinant_A <- det(A)

  if(determinant_A == 0){
    stop("The straightlines are either parallel or identical")
  }

  b <- matrix(c(-x$c, -y$c), nrow = 2)

  solution <- solve(A, b)

  solution <- c(x_intersect = solution[1,1],
                y_intersect = solution[2,1])

  return(solution)
}
