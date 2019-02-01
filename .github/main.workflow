workflow "New workflow" {
  on = "push"
  resolves = ["pull oracle"]
}

action "pull oracle" {
  uses = "./support/docker_pull_oracle.sh"
}
