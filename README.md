# docker-weeslack
A dockerfile for weechat + wee-slack

# build
`docker build --tag weeslack .`

# use
`docker run --rm -ti weeslack`

# persist data
Use a volume.
`docker run --rm -ti -v weeslack:/weechat`
