workflow "Validate Actions" {
  on = "push"
  resolves = ["Test sh Action", "Test GoCenter Action", "Test for JFrog CLI (Go)", "Test for JFrog CLI", "Test for Release"]
}

action "Test GoCenter Action" {
  uses = "retgits/actions/gocenter@master"
  args = ["-v", "version"]
}

action "Test sh Action" {
  uses = "retgits/actions/sh@master"
  args = ["ls -alh", "echo Hello World"]
}

action "Test for JFrog CLI (Go)" {
  uses = "retgits/actions/jfrog-cli-go@master"
  args = ["-v"]
}

action "Test for JFrog CLI" {
  uses = "retgits/actions/jfrog-cli@master"
  args = ["-v"]
}

action "Test for Release" {
  uses = "retgits/actions/github-release@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    ARTIFACT_DIR = "-version"
  }
}
