#!/bin/bash
echo "********************************************************************"
echo "* Start MIXXX with different Sound Configurations                  *"
echo "********************************************************************"
PS3='Please enter your choice: '
options=("prep" "perf" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "prep")
			if [[ ! -e ~/.mixxx/prep_soundconfig.xml ]]; then
				cp ~/.mixxx/soundconfig.xml ~/.mixxx/prep_soundconfig.xml
			fi
			echo "starting mixxx in preparation mode"
			mv -f ~/.mixxx/soundconfig.xml ~/.mixxx/bkup_soundconfig.xml
			cp ~/.mixxx/prep_soundconfig.xml ~/.mixxx/soundconfig.xml
			mixxx
			read -p "continue with Enter"
			cp -f ~/.mixxx/soundconfig.xml ~/.mixxx/prep_soundconfig.xml
			break
            ;;
        "perf")
			if [[ ! -e ~/.mixxx/perf_soundconfig.xml ]]; then
				cp ~/.mixxx/soundconfig.xml ~/.mixxx/perf_soundconfig.xml
			fi
			echo "starting mixxx in performance mode"
			mv -f ~/.mixxx/soundconfig.xml ~/.mixxx/bkup_soundconfig.xml
			cp ~/.mixxx/perf_soundconfig.xml ~/.mixxx/soundconfig.xml
			mixxx
			read -p "continue with Enter"
			cp -f ~/.mixxx/soundconfig.xml ~/.mixxx/perf_soundconfig.xml
			break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option";;
    esac
done
