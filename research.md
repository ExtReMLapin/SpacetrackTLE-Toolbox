
## Non-API SPAM

Do not try to run the following script

```powershell
 curl.exe --cookie cookies.txt -sS --remote-name --remote-header-name --fail --write-out -Z https://www.space-track.org/documentation/download?fileID=[0-500000] -O
 ```
 
 Even if the address is not explicitly part of the API it can get your account limited.
 
 It took them around 12 hours to detect my script that ran for ~3 hours
 
 So yes, there is always someone monitoring the servers.
 
 Abuses on the API are automatically limiting account, others parts (like the link above) are not. (it will gets you limited, but not just right when "abusing it")

Also you don't need your cookies to bruteforce this specific address, but better have your account limited than your IP banned.
