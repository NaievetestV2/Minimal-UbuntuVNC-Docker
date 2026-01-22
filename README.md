# Minimal-UbuntuVNC-Docker
This is a config to install Ubuntu 24.04 LTS (or any other) in Docker with VNC and NoVNC with a Desktop Environment.

## Notes:
- Tested on Oracle Always-Free Tier Ampere A1 processor (aarch64)
- It works like a charm and I might update it if I feel like it, if you want, feel free to fork it and send me on my Discord `confidentialpeacock` so I can post it here!
- This has VNC and NoVNC on port 3001 and 3002 respectively.
- **Password:** dumbfuck#1
- **Username:** headless
- This is done with extensive guidance from **Google Gemini**
- Runs Ubuntu 24.04 LTS
- I designed this for a friend's friend to play Minecraft on his shitty PC but quickly realized that I can't run Cracked Minecraft or anything on ARM
- Have fun!

## Instructions:
1. Initialize Brain.
2. Choose a machine.
3. Make a directory specifically for this, change into that directory, copy the files other than README to the directory, or just clone the repository.
4. Run `docker compose up -d --build` in the directory.
5. Run `docker exec -it minecraft_desktop /bin/bash` to enter the terminal of the container.
6. Copy `install_vnc.sh` and `start_vnc.sh` into the container.
7. Run `install_vnc.sh`
8. Finalize setup like `install_vnc.sh` said by running `vncpasswd` and setting your password then `start_vnc.sh`
9. Try to connect to VNC or NoVNC (virt-viewer recommended for you linux users like me).
10. Do whatever you want, go NUTS!

**__IF HOST REBOOTS RUN `start_vnc.sh` AGAIN IF YOU CANNOT CONNECT TO VNC__**

If it does not work in any script please DM `hackerdogs.` or `hackdogsonly.`.

Thank you very much!


## Credits:
Trident Network: https://discord.gg/ZBT6Jr94Xh (for causing me a headache enough to look for a side project.)
Angkan: real.angkan (for forcing me to do it)
Eth: ethmam10_15716 (for finding me to do it)
Shon: shonjohn7147 (for stopping me from doing this by finding a payment method and using AWS for it instead)
Thanks!
