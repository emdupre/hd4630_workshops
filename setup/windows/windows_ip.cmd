@echo off
set ip_address_string="IP Address"
rem Uncomment the following line when using Windows 7 or Windows 8 / 8.1 (with removing "rem")!
set ip_address_string="IPv4 Address"
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do (
    echo %%f
    rem startxwin -- -listen tcp &
    rem xhost + %%f
    rem eval "$(docker-machine env hostname*)"
    goto :eof
)