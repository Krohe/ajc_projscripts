* Dossier scripts:
    * une collections plus ainée avec 4 scripts sh:
    1. vm-apt.sh 
        * mise en place packages util
        * mise en place dependancies pour docker
        * mise en place dependancies pour VBoxGuesaddition
        * mise en place GuestboxAdditions
        * ajouter utilisateur en group sudo 
        * utilise comme utilisateur root `sh ./vm-apt.sh user`
    2. vm-usersetup.sh
        * ajouter sbin dans .bashrc
        * finaliser l'installation Guestuseradditions
        * `./vm-usersetup.sh` 
    3. docker.sh
        * installation docker et mise en place utilisateur docker
        * !finit par reboot!
        * `sudo ./docker.sh`
    4. grafana.sh
        * installation grafana
