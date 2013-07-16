# TODO SWAP
# process.env.MADEYE_APOGEE_URL="http://madeye.io"
# process.env.MADEYE_AZKABAN_HOST="madeye.io:4004"
# process.env.MADEYE_AZKABAN_URL="http://"+process.env.MADEYE_AZKABAN_HOST

if process.env["NODE_ENV"] == "development"
  madeye = Npm.require("madeye")
  # TODO this needs to be able to run multiple times
  # right now the madeye daemon is restarted repeatedly on each live reload
  # maybe just have dementor ignore kill signals and gracefully not do anything when invoked the second time?

  madeye.execute
    directory: process.cwd()
    clean: false
    ignorefile: null
    tunnel: true
    shareOutput: true
    appPort: process.env["PORT"]
    captureViaDebugger: false
