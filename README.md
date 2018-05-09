# unix-scripts
The repository contains different unix scripts I have created to use over time.

`script.sh`

This shell script can be used on Debian GNU Linux 9 (Stretch) to make it compatible to run it remotely. It installs and configures xrdp, xfce, google chrome and chromium. It helps users add GUI on their system remotely. Helpful while running EC2/Gcloud instances. 
To run it,
1. Login remotely via PuTTY.
2. On PuTTY terminal, run `git clone https://github.com/coderwassananmol/unix-scripts`
3. Change the directory, `cd unix-scripts`
4. `nano script.sh` and replace `admin` with your username on remote computer.
4. Then finally run, `sh script.sh`
5. After it completes, remotely login with your favorite remote desktop client.

Note: It may also work on previous versions of Debian. Please test and add issues/PR's.


