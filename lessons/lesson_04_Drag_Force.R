# Load aerodynamic library
source("src/aerodynamics.R")

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

# Single calculation
calculate_drag_power(
  rho = 1.225,
  v = 15,
  Cd = 0.3,
  A = 0.5
)

# Vector calculation
velocity <- c(5, 10, 15, 20, 25, 30, 35, 40)

drag_power <- calculate_drag_power(
  rho = 1.225,
  v = velocity,
  Cd = 0.3,
  A = 0.5
)
drag_power

# Vector calculaton for drag coefficient
Cd_values <- c(0.1, 0.2, 0.3, 0.4)

drag_power_cd <- calculate_drag_power(
  rho = 1.225,
  v = 30,
  Cd = Cd_values,
  A = 0.5
)
drag_power_cd

# Create a data frame
data_4 <- data.frame(
  Velocity = velocity,
  DragPower = drag_power
)

data_4

# Figures
library(ggplot2)
ggplot(data_4, aes(x = Velocity, y = DragPower)) +
  geom_point() +
  geom_line() +
  labs(
    title = "Drag Power vs Velocity",
    x = "Velocity [m/s]",
    y = "Drag Power [W]"
  )
