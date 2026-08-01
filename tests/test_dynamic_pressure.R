source("src/aerodynamics.R")

dynamic_pressure_test <- calculate_dynamic_pressure(
  rho = 1.225,
  v = 15
)

dynamic_pressure_test

expected_dynamic_pressure <- (0.5 * 1.225 *15^2)

if (abs(dynamic_pressure_test - expected_dynamic_pressure) < 1e-6) {
  print("TEST PASSED")
} else {
  print("TEST FAILED")
}

dynamic_pressure_1 <- calculate_dynamic_pressure(
  rho = 1.225,
  v = 15
)

dynamic_pressure_2 <- calculate_dynamic_pressure(
  rho = 1.225,
  v = 30
)

if (abs(dynamic_pressure_1 * 4 - dynamic_pressure_2) < 1e-6) {
  print("TEST PASSED")
} else {
  print("TEST FAILED")
}