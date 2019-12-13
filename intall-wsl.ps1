$username = "Ilmari"
$home_dir = "C:\Users\$username"

cd $home_dir\Downloads
Invoke-WebRequest https://aka.ms/wsl-ubuntu-1804 -out ubuntu.zip -UseBasicParsing
Expand-Archive .\ubuntu.zip
cd ubuntu
.\ubuntu1804.exe
