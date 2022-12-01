node('linux') {
  def nodejs = docker.image('node:latest')
  nodejs.pull() // make sure we have the latest available from Docker Hub
  nodejs.inside {
    // …as above
    node --version
  }
}
