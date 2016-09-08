# EmulationStation
A cross-platform graphical front-end for emulators with controller navigation.

Project website: http://emulationstation.org

# How to use
```
docker run -it --rm \
                -e DBUS_SESSION_BUS_ADDRESS \
                -e DISPLAY \
                --device /dev/input \
                --device /dev/snd \
                -v $HOME/.emulationstation:/root/.emulationstation \
                -v $HOME/roms:/root/roms \
                -v /run/user/$(id -u):/run/user/$(id -u) \
                -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
                -v /var/run/dbus:/var/run/dbus \
                -v /var/run/docker.sock:/var/run/docker.sock \
                somatorio/emulationstation
```

## Example es_systems.cfg 
(should be put at $HOME/.emulationstation)
https://gist.github.com/somatorio/dd2684f8f31c96a24015dbb491caab6d

## What about the themes?

Unfortunately i couldn't find a way to add the themes dir at the image (as it is placed at homedir/.emulationstation/themes and homedir/.emulationstation will be mounted as a volume)

But you can find ES 2.0 themes at [RetroPie github](https://github.com/RetroPie) they are available as repos starting with "es-theme-" [example](https://github.com/RetroPie/es-theme-simple), just download and unzip/untar at /where/you/want/your/.emulationstation/themes
