#' Function to calculate the effect of heat stress in trees of various ages
#' @param date YYYY-MM-DD
#' @param tree_age age of tree, between 0 and 100 years
#' @param precip (mm) total precipitation for the year
#' @param max_temp (degrees C) maximum temperature recorded
#' @returns text with the risk associated with each temperature and precip for each age

# Equation
survival <- function(date, tree_age, precip, max_temp){
  print(paste("Date: ", date))
  if(tree_age <= 10){
    print("Seedling, higher risk of heat-related mortality")
    if(max_temp > 30 && precip < 500){
      print(paste("Maximum temperature of:", max_temp,
                  "degrees C and annual precipitation of:", precip, 
                  "mm causes high mortality risk."))
    }else
      print(paste("Maximum temperature of:", max_temp,
                  "degrees C and annual precipitation of:", precip, 
                  "mm causes low mortality risk."))
  }
  if(tree_age <= 50 & tree_age >10){
    print("Sapling, medium risk of heat-related mortality")
    if(max_temp > 35 && precip < 200){
      print(paste("Maximum temperature of:", max_temp,
                  "degrees C and annual precipitation of:", precip, 
                  "mm causes high mortality risk."))
    }else
      print(paste("Maximum temperature of:", max_temp,
                  "degrees C and annual precipitation of:", precip, 
                  "mm causes low mortality risk."))
  }
  if(tree_age >50){
    print("Adult, low risk of heat-related mortality")
    if(max_temp > 38 && precip < 100){
      print(paste("Maximum temperature of:", max_temp,
                  "degrees C and annual precipitation of:", precip, 
                  "mm causes high mortality risk."))
    }else
      print(paste("Maximum temperature of:", max_temp,
                  "degrees C and annual precipitation of:", precip, 
                  "mm causes low mortality risk."))
  }
}
