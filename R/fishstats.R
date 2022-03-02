#' Takes a vector of fish names and returns most common fish, rarest fish, and total number of fish
#' 
#' @param fish list of fish caught
#' @return list with the following items
#' \describe{
#' \item{most_common}{Name of most common fish}
#' \item{rarest}{Name of rarest fish}
#' \item{total}{Value of total number of fish caught}
#' }


fishstats = function(fish) {
  
  fish = as.factor(fish)
  
  # Compute most common fish
  most_common = names(which.max(summary(fish)))
  
  # Compute rarest fish
  rarest = names(which.min(summary(fish)))
  
  # Total number of fish caught
  total = length(fish)
  
  # Output
  return(list(most_common = most_common, rarest = rarest, total = total))
}