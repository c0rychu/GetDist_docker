# GetDist_docker

This is a docker container of [GetDist](https://pypi.org/project/GetDist/). It allows you to run GetDistGUI on macOS.

## Setup
1. Install Docker: https://www.docker.com/products/docker-desktop
2. Install XQuartz: https://www.xquartz.org/
3. **Reboot** your computer
3. In the setup of XQuartx, go to `Security` and check `Allow connections from network clients`
4. **Restart** XQuartz
5. You should see X11.bin on TCP:6000 by executing `lsof -i TCP:6000`

```
$ lsof -i TCP:6000
COMMAND  PID     USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
X11.bin  2691 feynman   10u  IPv6 0x45afc01650938294      0t0  TCP *:6000 (LISTEN)
X11.bin  2691 feynman   11u  IPv4 0x45afc01653e99382      0t0  TCP *:6000 (LISTEN)
```

7. `git clone https://github.com/c0rychu/GetDist_docker.git` and `cd GetDist_docker`
8. `make build`
9. `make` = `make run-gui` to launch the GetDistGUI directly. Or `make run` to get a interactive shell.
