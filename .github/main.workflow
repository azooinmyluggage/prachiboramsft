workflow "Build and test on push" {
  on = "push"
  resolves = ["Publish Test Results"]
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

action "Publish Test Results" {
  uses = "./.github/ptr"
  needs = ["Run tests"]
}
