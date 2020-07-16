# pyrogram-schedule
pyrogram-schedule is docker container for arm64 (raspberry pi) based on python 3.8 with installed modules [pyrogram](https://github.com/pyrogram/pyrogram) and [schedule](https://github.com/dbader/schedule).

## Docker Hub
You can get docker image at the following location: [pawerak/pyrogram-schedule](https://hub.docker.com/r/pawerak/pyrogram-schedule).
## Installing
```
docker pull pawerak/pyrogram-schedule:latest
```
## Running image
### First run
For the first run docker will ceate persistence directory. 
```
docker run -d --rm\
  --name=Telegram_BOT \
  -v ~/path/to/scripts:/usr/scripts \
  pawerak/pyrogram-schedule
```
After that you have to manualy copy ```config.ini``` file, which you should fill with your api ID and hash. Instruction [here](https://docs.pyrogram.org/intro/setup). You should also copy file ```start.py```.
### Second run
For the second run you will login to your telegram account use this command.
```
docker run -it --rm \
  --name=Telegram_BOT \
  -v ~/path/to/scripts:/usr/scripts \
  -e script=start.py \
  pawerak/pyrogram-schedule
```
During second run you will perform authorization - please see [pyrogram documentation](https://docs.pyrogram.org/start/auth).

After entering confirmation code, you can ```exit``` from container.

### Third run
To run container with your own script use command shown below.
```
docker run -d \
  --name=Telegram_BOT \
  -e TZ=Europe/Warsaw \
  -e script=main.py \
  -v ~/path/to/scripts:/usr/scripts \
  --restart unless-stopped \
  pawerak/pyrogram-schedule
```
Your main script, that will be run in container should be named **main.py**.

Alternatively, you can use [docker-compose](https://github.com/pawerak/pyrogram-schedule/blob/master/docker-compose.yaml).
