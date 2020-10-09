                                                                                                      
	______                          _____ _          _ _ 
	| ___ \                        /  ___| |        | | |
	| |_/ /_____   _____ _ __ ___  \ `--.| |__   ___| | |
	|    // _ \ \ / / _ \ '__/ __|  `--. \ '_ \ / _ \ | |
	| |\ \  __/\ V /  __/ |  \__ \ /\__/ / | | |  __/ | |
	\_| \_\___| \_/ \___|_|  |___/ \____/|_| |_|\___|_|_|
                                                                                                                        

# Undetectable Revers Shell Window10💻
## What is it?

This is the tweaked version from the original work of [this repo](https://gist.github.com/staaldraad/204928a6004e89553a8d3db0ce527fd5) posted on 2016 by Etienne Stalmans. Created as a power shell script to bind a shell to the remote host shell. This modification and tweak of the script is under 2 main purpose:

 - For **education purpose** of how a patched script can still be execute **without any malware detection**
 - How to **bind a shell** actively using TCP

**The original script are patched already and will be detect as malware when run a ps1 script 🐱‍🏍

## Why this?

To experiment and education purpose showing how the combination of useful tool could tweak a patched script can still be execute without detected. In this scenario I am using various step and tool including the a big contribution from [KeyEmu](https://github.com/panhavad/keyboard-emulator) to make this happened.

## How it work?

There are various skill and tool involve such as:
- Batch Scripting
- [KeyEmu](https://github.com/panhavad/keyboard-emulator)
- Advanced BAT to EXE Converter PRO
- [Ncat](https://nmap.org/ncat/)

These are the step to I follow:

 1. Make sure I have a working version of KeyEmu which will help me to paste the original ps1 script line by line
 2. Write a batch file to open PowerShell and using KeyEmu text and return feature to execute script line by line
 3. Using the Advanced BAT to EXE Converter PRO to embed KeyEmu file in and convert the bat to exe so when the bat code will execute directly in PowerShell instead of CMD

## Does it really work?
This is the analysis and snapshot of all process when the program execute:  [app.any.run](https://app.any.run/tasks/29269961-388d-462f-86a5-3242a4d21d39/)

![enter image description here](https://i.postimg.cc/ncps07JW/Shared-Screenshot.jpg)

![enter image description here](https://i.postimg.cc/PxFjZgdh/Untitled-Project.gif)

## 🐫Last Message

*Please use it at your own risk.*

