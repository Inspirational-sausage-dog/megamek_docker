### Prerequisites

docker-compose version 3 and docker version at least 25.0.3 (it's the only one I tested on lol).

### Build

Clone repository. Build with docker-compose specifying the megamek version (see available versions here: https://github.com/MegaMek/mekhq/releases) via --build-args flag and MEGAMEK_VERSION variable.

`docker-compose build --build-arg MEGAMEK_VERSION=0.49.18`

### Run

To protect game options with password, modify the .env file. Up your instance with this command:

`docker-compose up -d`
