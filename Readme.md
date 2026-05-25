# UDPFS Server for Neutrino

## Development

Build only stage one: `docker build --target stage1 -f docker/Dockerfile .`

## Deployment

from root of directory run `docker compose -f docker/docker-compose.yml up --build`

This will start the udpfs server and occupy two ports, one for discovery (`62966`) and one for the data tranfer (not static).
