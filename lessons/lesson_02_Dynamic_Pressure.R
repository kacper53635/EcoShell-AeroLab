# Calculate Dynamic pressure
#
# rho - air density [kg/m^3]
# v   - velocity [m/s]
# Returns dynamic pressure [Pa]
calculate_dynamic_pressure <- function(rho, v) {
  dynamic_pressure <- 0.5 * rho * v^2
  return(dynamic_pressure)
}

# Single calculation
calculate_dynamic_pressure(
  rho = 1.225,
  v = 15
)

# Vector calculation
velocity <- c(5, 10, 15, 20, 25, 30, 35, 40)

dynamic_pressure <- calculate_dynamic_pressure(
  rho = 1.225,
  v = velocity
)
dynamic_pressure

# Create a data frame
data_2 <- data.frame(
  velocity = velocity,
  DynamicPressure = dynamic_pressure
)

data_2

# Figures
library(ggplot2)
ggplot(data_2, aes(x = velocity, y = DynamicPressure)) +
  geom_point() +
  geom_line() +
  labs(
    title = "Dynamic Pressure vs Velocity",
    x = "Velocity [m/s]",
    y = "Dynamic Pressure [Pa]"
  )