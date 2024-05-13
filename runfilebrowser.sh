docker run \
    -v /root/filebrowser/data:/srv \
    -v /root/filebrowser/database/filebrowser.db:/database/filebrowser.db \
    -v /root/filebrowser/conf/settings.json:/config/settings.json \
    -e PUID=$(id -u) \
    -e PGID=$(id -g) \
    -p 8085:80 \
    filebrowser/filebrowser:s6
