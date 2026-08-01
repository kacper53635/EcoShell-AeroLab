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

# Calculate Drag Force
#
# rho - air density [kg/m^3]
# v   - velocity [m/s]
# Cd  - drag coefficient [-]
# A   - cross-sectional area [m^2]
#
# Returns Drag force [N]
calculate_drag_force <- function(rho, v, Cd, A) {
  
  drag_force <- 0.5 * rho * v^2 * Cd * A
  
  return(drag_force)
}

# Calculate Drag Power
#
# rho - air density [kg/m^3]
# v   - velocity [m/s]
# Cd  - drag coefficient [-]
# A   - cross-sectional area [m^2]
#
# Returns Drag Power [W]
calculate_drag_power <- function(rho, v, Cd, A) {
  
  drag_force <- calculate_drag_force(
    rho = rho,
    v = v,
    Cd = Cd,
    A = A
  )
  
  drag_power <- drag_force * v
  
  return(drag_power)
}