#!/bin/bash
git clone https://github.com/jda/pk2cmd.git
cd pk2cmd
make linux
sudo make install 
pk2cmd -PPIC18F4550 -M -Y -W -F../DG8SAQ synthesiser_Emulator/firmware.hex
