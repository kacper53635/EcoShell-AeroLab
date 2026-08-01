source("src/aerodynamics.R")

drag_force_test <- calculate_drag_force(
  rho = 1.225,
  v = 15,
  Cd = 0.3,
  A = 0.5
)

expected_drag_force <- 0.5 * 1.225 * 15^2 * 0.3 * 0.5

if (abs(drag_force_test - expected_drag_force) < 1e-6) {
  print("TEST PASSED")
} else {
  print("TEST FAILED")
}

drag_force_1 <- calculate_drag_force(
  rho = 1.225,
  v = 15,
  Cd = 0.3,
  A = 0.5
)

drag_force_2 <- calculate_drag_force(
  rho = 1.225,
  v = 30,
  Cd = 0.3,
  A = 0.5
)

if (abs(drag_force_1 * 4 - drag_force_2) < 1e-6) {
  print("TEST PASSED")
} else {
  print("TEST FAILED")
}