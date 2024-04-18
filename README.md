### Prerequisites

docker-compose version 3 and docker version at least 25.0.3 (it's the only one I tested on lol).

Create a folder. Clone this repository into it. 

### Configure

Change settings in .env file according to your preferences. Build version and port are required for successful build and launch. Check available versions [here](https://github.com/MegaMek/megamek/releases). To protect game options with password, modify the PASSWORD setting.

Example .env file:
```
PASSWORD=
PORT_RANGE=2346
MEGAMEK_VERSION=0.49.18
```

You can use also port ranges for scale:
`PORT_RANGE=2340-2346`

You print your resolved config to the terminal with a command:

`docker-compose config`

### Build

Build with docker-compose:

`docker-compose build `

### Run

Start your instance with this command:

`docker-compose up -d`

Or if you set port range as an actual range, you can use scale flag to up multiple instances:

`docker-compose up --scale megamek=[NUMBER OF INSTANCES <= NUMBER OF PORTS AVAILABLE IN RANGE]`
