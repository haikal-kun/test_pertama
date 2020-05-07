@echo off
title BEGINNERS-CMD
mode con:cols=80 lines=50
color 0C
    cls
            echo  *******************************************************************
            echo  **    DDD   III  SSSS  CCCC  LL    AAAA  III MM MM  EEEE RRRR    **
            echo  **    D  D  III  SS    CC    LL    A  A  III M M M  EE   R  R    ** 
            echo  **    D  DD III  SSSS  CC    LL    AAAA  III M   M  EEEE RRRR    **     
            echo  **    D  D  III    SS  CC    LL    A  A  III M   M  EE   R R     **  
            echo  **    DDD   III  SSSS  CCCC  LLLL  A  A  III M   M  EEEE R  R    **   
            echo  +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            echo  ++  I'M  Not Responsibility If Your Hardware Or Software Break   ++
            echo  *******************************************************************
            ECHO          IF YOU CAN'T TRUSTED THIS TOOLS, CLOSE AND DELETE!!!
            echo  Your Time & time /t
            echo  Your Date & date /t
PAUSE
color E0
    CLS
REM THIS IS FOR EDUCATIONAL ONLY AND SUPPORT ME ON SCHOOL, DONT BULLY ME PLS.....REGARDS


REM  NO-CREDIT
:Menu


            echo ================================================================================
            echo 1.  Reset the BranchCache service                                             
            echo 2.  Release / Reset the IPv4 address for the specified adapter                
            echo 3.  Check Host Your Internet (google)                                         
            echo 4.  Wifi Tethring / HOSTPOT (Check Your Wireless Adapter, Have To Support !!) 
            echo 5.  Displays all connections and listening ports                              
            echo 6.  Displays protocol statistics and current TCP/IP routing table             
            echo 7.  Disk Cleaner                                                              
            echo 8.  Check Specification Hardware Computer                                              
            echo 0.  Exit                                                                      
            echo ================================================================================


set /p choice= Choose:
    if '%choice%'=='1' netsh branchcache reset & PAUSE & CLS & goto Menu
      if '%choice%'=='2' ipconfig /release & pause & CLS &  goto Menu
        if '%choice%'=='3' ping 8.8.8.8 & PAUSE & CLS & goto Menu
          if '%choice%'=='4' cls & goto Submenu
            if '%choice%'=='5' NETSTAT -a & PAUSE & CLS & goto Menu
          if '%choice%'=='6' NETSTAT -r & PAUSE & CLS & goto Menu
        if '%choice%'=='7' echo WAITING AND SEE THE POPUP IN MONITOR AND FOLLOW STEP BY STEP & cleanmgr.exe & PAUSE & CLS & goto Menu
      if '%choice%'=='8' dxdiag.exe & echo WAITING AND SEE THE POPUP IN MONITOR PLS.... & PAUSE & CLS & goto Menu
    if '%choice%'=='0' echo HOPE YOU ENJOY & pause & exit


REM Input Error from users
    cls
            ECHO MAKE SURE YOUR TYPING
        pause & cls
goto menu


REM SUBMENU WIFI TETHRING ON / OFF
:Submenu
    cls
            echo  1.  START WIFI TETHRING ON
            echo  2.  START WIFI TETHRING OFF
            echo  3.  SHOW SSID AND PASSWORD TETHRING
            echo  4.  EXIT AND BACK TO HOME
    set /p choice= Choose:
    if '%choice%'=='1' netsh wlan start hostednetwork & netsh wlan set hostednetwork mode=allow ssid=MYWIFI key=12345678 & pause & goto Submenu
      if '%choice%'=='2' netsh wlan stop hostednetwork & pause & goto Submenu
      if '%choice%'=='3' cls & echo SSID=MYWIFI PASS=12345678 & pause & goto Submenu
    if '%choice%'=='4' CLS & goto Menu


REM Input Error from users
    cls
            ECHO COME ON, CHECK TYPING
        pause & cls
goto Submenu



