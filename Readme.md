# UDPFS Server for Neutrino

## Development

Build only stage one: `docker build --target stage1 -f docker/Dockerfile .`

## Deployment

from root of directory run `docker compose -f docker/docker-compose.yml up --build`

This will start the udpfs server and occupy two ports, one for discovery (`62966`) and one for the data tranfer (not static).

It is assumed that the UPDFS server has the IP `10.42.0.66`. Change the [nhddl.yaml](roms/nhddl/nhddl.yaml) otherwise.

Folder structure reference:

```md
ART/ # cover art, optional
  |
  - SLUS_200.02_COV.png
nhddl/
  |
   - lastTitle.txt # created automatically
   - cache.bin # created automatically
   - global.yaml # optional argument file, applies to all ISOs
   - nhddl.yaml # NHDDL options, applied after initialization is complete
   - Silent Hill 2.yaml # optional argument file, applies only to ISOs that start with "Silent Hill 2"
CD/
  |
   — Ridge Racer V.iso
DVD/
  |
   - Silent Hill 2.iso
   - TimeSplitters.iso
```
