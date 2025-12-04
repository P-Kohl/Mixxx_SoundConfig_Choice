bash Menu Script to chose SoundConfig for Mixxx
<br>
Supposed you have 2 possible SoundConfigs:<br>
  One without any extension - your computer only... let's call it "preparation" (prep)<br>
  One with extension like soundcard(s)... let's call it called "perform" (perf)<br>
<br>
The bash script file MixxxSoundCfgChoice.sh is to place in the home folder of the user and does the work:<br>
  create some file if needed (prep_soundconfig.xml and perf_soundconfig.xml)<br>
  copy and backup the config files<br>
  start mixxx - and wait for the ENTER key to be tapped - then:<br>
  copy the modified soundconfig.xml to the right temporary config file (here I suppose the names of the files do the talk)<br>
<br>
The file StartMixxx.desktop is a launcher for the bash script in the home folder<br>
if you placed the bash script in another directory, you should do the modifications here<br>
