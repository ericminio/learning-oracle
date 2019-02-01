workflow "New workflow" {
  on = "push"
  resolves = ["/support/docker_pull_oracle.sh"]
}

action "/support/docker_pull_oracle.sh" {
  uses = "./support/docker_pull_oracle.sh"
}
