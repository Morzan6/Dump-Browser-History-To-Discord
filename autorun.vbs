Set objShell = CreateObject("WScript.Shell")
objShell.Run "powershell -exec bypass -noprofile -file <FILE_TO_EXECUTE> --WindowStyle hidden >nul 2>&1", 0, True