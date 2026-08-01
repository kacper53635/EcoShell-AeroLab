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

# Single calculation
calculate_drag_force(
  rho = 1.225,
  v = 15,
  Cd = 0.3,
  A = 0.5
)

# Vector calculation
velocity <- c(5, 10, 15, 20, 25, 30, 35, 40)

drag_force <- calculate_drag_force(
  rho = 1.225,
  v = velocity,
  Cd = 0.3,
  A = 0.5
)
drag_force

# Vector calculaton for drag coefficient
Cd_values <- c(0.1, 0.2, 0.3, 0.4)

calculate_drag_force(
  rho = 1.225,
  v = 30,
  Cd = Cd_values,
  A = 0.5
)

# Create a data frame
data_3 <- data.frame(
  Velocity = velocity,
  DragForce = drag_force
)

data_3

# Figures
library(ggplot2)
ggplot(data_3, aes(x = Velocity, y = DragForce)) +
  geom_point() +
  geom_line() +
  labs(
    title = "Drag Force vs Velocity",
    x = "Velocity [m/s]",
    y = "Drag Force [N]"
)
