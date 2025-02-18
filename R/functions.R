# Custom functions are an important part of a drake workflow.
# This is where you write them.
# Details: https://books.ropensci.org/drake/plans.html#functions

optimise <- function(julia, x) {
  # JuliaCall::julia_setup()
  julia$library("DrakeCallJulia")
  julia$eval("DrakeCallJulia.optimise")(cars, x)
}

solve_shortest_path <- function(julia) {
  julia$library("DrakeCallJulia")
  julia$eval("DrakeCallJulia.solve_shortest_path()")
}