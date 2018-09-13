-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    font = "xft:Terminus-12",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = TopP 0 240,
    persistent = True,
    commands = [
        Run Weather "EDDI" ["-t","<tempC>°C <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
	Run BatteryN ["BAT0"] ["-t", "Batt(intern): <left>%","-L","20","-H","60","-l","#FFB6B0","-h","#CEFFAC","-n","#FFFFCC","--"] 60 "battery0",
	Run BatteryN ["BAT1"] ["-t", "Batt(extern): <left>%","-L","20","-H","60","-l","#FFB6B0","-h","#CEFFAC","-n","#FFFFCC","--"] 60 "battery1",
	Run Cpu ["-t","Cpu: <total>%","-L","30","-H","70","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 20,
        Run Memory ["-t","Mem: <usedratio>%","-H","3096","-L","1024","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 40,
        --Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        --Run Network "eth0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 20,
        Run Date "%a,%e-%#b-%Y %T" "date" 10,
        Run Kbd [("us(altgr-intl)", "US"), ("ch(de_nodeadkeys)", "CH"), ("ru", "RU")],
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %kbd%   %cpu%   %memory%   %battery0%   %battery1%   %EDDI%   <fc=#FFFFCC>%date%</fc>   "
}
