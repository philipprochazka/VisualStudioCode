docker run -d \
  --name=airsonic-advanced \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/Prague \
  -p 10000:81 \
  -p 14040:4040 \
  -v /mnt/c/Users/philip/Music:airsonic/winOSmusic \
  -v /mnt/a/Hudba/music:/airsonic/music \
  -v /mnt/a/Hudba/playlists:/airsonic/playlists \
  -v /mnt/a/Hudba/podcasts:/airsonic/podcasts \
  -v /mnt/a/airsonic/data:/airsonic/data \
  -v music:/airsonic/music \
  --restart unless-stopped \
  lscr.io/linuxserver/airsonic-advanced:11.0.0
