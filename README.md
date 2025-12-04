bash Menu Script to chose SoundConfig for Mixxx

Supposed you have 2 possible SoundConfigs:<br>
  One without any extension - your computer only... let's call it "preparation" (prep)<br>
  One with extension like soundcard(s)... let's call it called "perform" (perf)<br>

The bash script file MixxxSoundCfgChoice.sh is to place in the home folder of the user and does the work:
  create some file if needed (prep_soundconfig.xml and perf_soundconfig.xml)
  copy and backup the config files
  start mixxx - and wait for the ENTER key to be tapped - then:
  copy the modified soundconfig.xml to the right temporary config file (here I suppose the names of the files do the talk)

The file StartMixxx.desktop is a launcher for the bash script in the home folder
if you placed the bash script in another directory, you should do the modifications here
