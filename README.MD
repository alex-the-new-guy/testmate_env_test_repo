What this aims to illustrate:
`env` in `configTemplates` is not used for test discovery, while `env` in `advancedExecutables` is.

---

exe #1 (test_exe_link1.exe) and exe #2 (test_exe_link2.exe) are built and linked the same way (see CMakeLists.txt) from the same source file, effectively being different only in name.

`configTemplate` and `advancedExecutables` for this case have the same settings (`env:PATH`), but `advancedExecutables` is only configured for exe #2.\

Test discovery works for exe #2 but not for exe #1 since the DLL required to launch it is not accessible (not in `env:PATH`). 


