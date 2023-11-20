%1 mshta vbscript:createobject("shell.application").shellexecute("%~s0","::","","runas",1)(window.close)&exit
cd /d %~dp0 

setx /M PATH "%PATH%;C:\Program Files\CodeAndWeb\TexturePacker\bin;C:\Program Files\WinRAR"
echo set all env done:
echo %PATH%
pause