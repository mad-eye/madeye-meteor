# TODO SWAP
# process.env.MADEYE_APOGEE_URL="http://madeye.io"
# process.env.MADEYE_AZKABAN_HOST="madeye.io:4004"
# process.env.MADEYE_AZKABAN_URL="http://"+process.env.MADEYE_AZKABAN_HOST

madeye = Npm.require("madeye")
madeye.execute
  directory: process.cwd()
  clean: false
  ignorefile: null
  tunnel: true
  shareOutput: true

