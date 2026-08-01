# ============================================================
# AeroLab - Aerodynamic calculations
# ============================================================

# Calculate Reynolds number
#
# rho - air density [kg/m^3]
# v   - flow velocity [m/s]
# L   - characteristic length [m]
# mu  - dynamic viscosity [Pa*s]
#
# Returns Reynolds number [-]

calculate_reynolds <- function(rho, v, L, mu) {
  
  Re <- (rho * v * L) / mu
  
  return(Re)
}

# Calculate Dynamic pressure
#
# rho - air density [kg/m^3]
# v   - velocity [m/s]
# Returns dynamic pressure [Pa]
calculate_dynamic_pressure <- function(rho, v) {
  dynamic_pressure <- 0.5 * rho * v^2
  return(dynamic_pressure)
}
