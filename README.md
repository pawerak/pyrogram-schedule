# pyrogram-schedule
pyrogram-schedule is docker container for arm64 (raspberry pi) based on python 3.8 with installed modules [pyrogram](https://github.com/pyrogram/pyrogram) and [schedule](https://github.com/dbader/schedule)

## Docker Hub
You can get docker image at the following location: [pawerak/pyrogram-schedule](https://hub.docker.com/r/pawerak/pyrogram-schedule).
## Installing
```
docker pull pawerak/pyrogram-schedule:arm64
```
## Running image
To run container use command shown below.
```
docker run -d \
  --name=Telegram_BOT \
  -e TZ=Europe/Warsaw \
  -v ~/path/to/scripts:/usr/scripts \
  --restart unless-stopped \
  pawerak/pyrogram-schedule
```
If you mount volume, your login for telegram and scripts will persist container rebuild.
## Configuration
```
docker exec -it <container_id> /bin/bash
```
### Running scripts in background
```
nohup python3 /usr/scripts/your_script.py &
```