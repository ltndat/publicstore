#Requires -RunAsAdministrator

Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
irm https://community.chocolatey.org/install.ps1 | iex
foreach ($i in $(curl.exe -fsSL https://raw.githubusercontent.com/ltndat/publicstore/main/choco_listapps.txt)) {choco install $i -y}
