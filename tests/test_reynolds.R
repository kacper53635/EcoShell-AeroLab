source("src/aerodynamics.R")

Re_test <- calculate_reynolds(
  rho = 1.225,
  v = 15,
  L = 0.5,
  mu = 1.81e-5
)

Re_test

expected_reynolds <- (1.225 * 15 * 0.5) / 1.81e-5

if (abs(Re_test - expected_reynolds) < 1e-6) {
  print("TEST PASSED")
} else {
  print("TEST FAILED")
}

Re_1 <- calculate_reynolds(
  rho = 1.225,
  v = 15,
  L = 0.5,
  mu = 1.81e-5
)

Re_2 <- calculate_reynolds(
  rho = 1.225,
  v = 15,
  L = 1.0,
  mu = 1.81e-5
)

if (abs(Re_1 * 2 - Re_2) < 1e-6) {
  print("TEST PASSED")
} else {
  print("TEST FAILED")
}
