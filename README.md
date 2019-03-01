# mcHFx

-- mcHF rev 0.8 Logic board firmware --

------------------------------------------------------------------------------------------------------------------------------
This firmware is a SW4STM32 port of Clint latest mcHF firmware, with lots of stuff commented out(lcd, virtual eeprom, etc).
Currently it works on 0.7 and 0.8 rev PCBs, with some limitations on newest 0.8(as of Jan 2019).

------------------------------------------------------------------------------------------------------------------------------
How to compile:

- Download SW4STM32 studio (http://www.openstm32.org) and install

- On first run set your Workspace directory to something in MyDocuments,
not the mcHF project directory! In Eclipse, unlike other IDEs, the Workspace
is settings holder, not projects grouping method!

- Import the mcHF project from local dir or GitHub directly(point the path to
firmware\mchf_dsp\project\mchf-dsp and make sure mchf-dsp is checked)

All mcHF downloads here: http://www.m0nka.co.uk/?page_id=5269

------------------------------------------------------------------------------------------------------------------------------
Note: This code is still somehow experimental. For older mcHF board revisions, please use the better supported 
fork of the code here: https://github.com/df8oe/UHSDR

--------------------------------------------------------------
Krassi Atanassov, M0NKA
mcHF project, 2012 - 2018
