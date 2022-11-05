![REPO SIZE](https://img.shields.io/github/repo-size/scottbromander/the_marketplace.svg?style=flat-square)
![TOP_LANGUAGE](https://img.shields.io/github/languages/top/scottbromander/the_marketplace.svg?style=flat-square)

Variabeat
======
Variabeat is a drum sequencer that enables the playback of chance based rhythms. The probability of a sequenced note sounding can be adjusted individually, resulting in lively and improvisatory rhythms. 

![Variabeat](https://user-images.githubusercontent.com/98720000/173427749-094a4bad-edfd-4831-8b1f-7efe0d84fdd6.gif)

Download
======
## MacOS
### Note: Most Macs will treat any downloaded applications as a security threat and report the file as damaged when opened. Please perform the following steps to install Variabeat:
1. Download the application here: [Variabeat.zip](https://github.com/matt-d-nelson/Variabeat/files/8893833/Variabeat.zip)
2. Unzip the application by double clicking it.
3. Open a teminal window by navigating to /Applications/Utilities and double clicking on "Terminal".
4. Copy "xattr -d com.apple.quarantine " and paste it into the terminal window (ensure that there is a space at the end).
5. Click and drag the unzipped "Variabeat" application into the teminal window (the file path to the application should appear after the command pasted in step 4).
6. In the terminal window, press "enter" or "return" to execute the command.
7. Double click the "Variabeat" application to run the program.


Usage
===========

Add/Remove Steps
------------
1. Left Click the “+” button to add a step to the end of the sequencer (max steps: 32).
2. Left Click the “-” button to remove a step from the end of the sequencer.

Note Control
------------
1. Left Click on a box in the sequencer to add a note (added notes will be pink).
2. Right Click on an active note in the sequencer to remove the note.
3. Left Click and drag an active note to adjust the probability that it will sound.

Playback 
------------
- Click the “>” button to play audio.
- Click the “||” button to stop audio.
- Left Click on the boxes to the left of the sequence grid to solo a sound.
- Right Click on said boxes to mute a sound.
- Click and drag the “volume” slider to increase or decrease gain.
- Click and drag the “density” slider to adjust the probability of all non-certain notes sounding.

Tempo Control
------------
### Note: Tempo is based on 8th note values.
- Left Click on the box to the right of the “tempo” box to adjust the tempo in the following ways:
  - Left Clicking and dragging.
  - While selected (the box will be green), type in the desired tempo.
  - While selected, use the mouse scroll wheel to increase or decrease the tempo.
- Click and drag the "var" slider to randomize playback in the following ways:
  - Drag right to randomly reduce the amount of time between steps.
  - Drag left to randomly increase the amount of time between steps.

Importing sounds
------------
### Note: GameMaker only supports the importing of .ogg files.
1. Right Click a sound’s name to open file explorer.
2. Select the .ogg sound file you would like to use and click “open”.
3. Left Click a sound’s name and type to rename that sound.

Save/Load
------------
### Save
1. Left Click the “save” button to open file explorer.
2. Enter the desired file name and click “save”
### Load
1. Left Click the “load” button to open file explorer.
2. Select the desired file name and click “open”.

## Built With

- GameMaker Studio 2
- Aesprite

## Support
If you have suggestions or issues, please email me at matt.dav.nelson@gmail.com

