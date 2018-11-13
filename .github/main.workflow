workflow "Build and test on push" {
  on = "push"
  resolves = ["Run tests"]
}

action "npm install" {
  uses = "actions/npm@33871a7"
  args = "install"
}

action "Run tests" {
  uses = "actions/npm@33871a7"
  needs = ["npm install"]
  args = "test"
}
