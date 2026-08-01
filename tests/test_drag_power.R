source("src/aerodynamics.R")

drag_power_test <- calculate_drag_power(
  rho = 1.225,
  v = 15,
  Cd = 0.3,
  A = 0.5
)

expected_drag_power <- 0.5 * 1.225 * 15^3 * 0.3 * 0.5

if (abs(drag_power_test - expected_drag_power) < 1e-6) {
  print("TEST PASSED")
} else {
  print("TEST FAILED")
}

drag_power_1 <- calculate_drag_power(
  rho = 1.225,
  v = 15,
  Cd = 0.3,
  A = 0.5
)

drag_power_2 <- calculate_drag_power(
  rho = 1.225,
  v = 30,
  Cd = 0.3,
  A = 0.5
)

if (abs(drag_power_1 * 8 - drag_power_2) < 1e-6) {
  print("TEST PASSED")
} else {
  print("TEST FAILED")
}

drag_power_3 <- calculate_drag_power(
  rho = 1.225,
  v = 15,
  Cd = 0.3,
  A = 0.5
)

drag_power_4 <- calculate_drag_power(
  rho = 1.225,
  v = 15,
  Cd = 0.6,
  A = 0.5
)

if (abs(drag_power_3 * 2 - drag_power_4) < 1e-6) {
  print("TEST PASSED")
} else {
  print("TEST FAILED")
}