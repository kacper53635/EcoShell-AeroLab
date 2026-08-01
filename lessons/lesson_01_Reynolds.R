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


# Single calculation

calculate_reynolds(
  rho = 1.225,
  v = 15,
  L = 0.5,
  mu = 1.81e-5
)


# Vector calculation

velocity <- c(5, 10, 15, 20, 25, 30, 35, 40) # seq() can generate a sequence from 5 to 40 with a step of 1:
                                             # velocity <- seq(5, 40, by = 1)

Re <- calculate_reynolds(
  rho = 1.225,
  v = velocity,
  L = 0.5,
  mu = 1.81e-5
)

Re


# Create a data frame

data <- data.frame(
  velocity = velocity,
  Reynolds = Re
)

data

# Figures
library(ggplot2) # ggplot2 is part of the tidyverse package, just do install.packages("tidyverse")
ggplot(data, aes(x = velocity, y = Reynolds)) +
  geom_point() +
  geom_line() +
  labs(
    title = "Reynolds number vs velocity",
    x = "Velocity [m/s]",
    y = "Reynolds number [-]"
  )