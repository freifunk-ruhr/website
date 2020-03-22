# boilerplate
The Freifunk-Ruhr Boilerplate for our Open-Source projects.

## Index
* [Requirements](#requirements)  
* [Installation](#installation)  
* [Useful commands](#useful_commands)  
* [License](#License)  
* [Memorandium of Understanding](#Memorandium_of_Understanding)  

## Requirements
* Docker  
* Docker-Compose  

## Installation
0. Modify the Caddyfile with your informations  
1. Pull or build the image.  
2. Run it with `$ docker run --restart=unless-stopped -P <image>`  

## Useful commands

### Run tests
1. Start the container  
`$ docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build`  
2. Start the cypress tests  
`$ docker-compose -f docker-compose.test.yml run test`  
3. Clean up  
`$ docker-compose -f docker-compose.yml -f docker-compose.dev.yml -f docker-compose.test.yml down`  

### Push image
1. Build the image  
`$ docker-compose -f docker-compose.yml build`  
2. Push the image  
`$ docker-compose -f docker-compose.yml push`  

## License
https://github.com/freifunk-ruhr/boilerplate/blob/master/LICENSE

## Memorandum of Understanding
https://blog.freifunk.net/2015/05/15/memorandum-understanding/
