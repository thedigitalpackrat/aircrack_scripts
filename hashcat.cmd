cd c:\hacking\hashcat-5.1.0

FOR %%i IN (c:\hacking\wordlist\*) DO "C:\hacking\hashcat-5.1.0\hashcat64.exe" -m 2500 1.hccapx %%i >> c:\hacking\cracklog.txt