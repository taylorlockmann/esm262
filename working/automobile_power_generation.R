#' Automobile Power Generation
#' 
#' This function computes automobile fuel efficiency, or the power required to keep a car moving at a given speed
#' @param crolling aerodynamic resistance coefficient of a car while it is rolling
#' @param mass vehicle mass (kg)
#' @param g acceleration due to gravity (9.8 m/s2)
#' @param speed vehicle speed (m/s)
#' @param surface_area surface area of car (m2)
#' @param p_air density of air (1.2 kg/m3)
#' @param cdrag aerodynamic resistance coefficient of a car's drag 
#' @return Pb (W)
#' 
# function definition
automobile_power_generation = function(mass, speed, surface_area, crolling = 0.015, g = 9.8, p_air = 1.2, cdrag = 0.3) {
  Pb = crolling*mass*g*speed+0.5*surface_area*p_air*cdrag*speed^3
  return(Pb)
}

