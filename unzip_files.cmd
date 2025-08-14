mkdir "C:\AppTemp\vmware"
mkdir "C:\AppTemp\office"
"C:\Program Files\7-Zip\7z.exe" x "%userprofile%\Downloads\OfficeMaku2024.zip" -o "C:\AppTemp\office" -y
start "" "C:\AppTemp\office\OfficeMaku2024.exe"
move "%userprofile%\Downloads\vmware-workstation-pro-17-6-0-build-24238078.exe" "C:\apptemp\vmware\"
start "C:\apptemp\vmware\vmware-workstation-pro-17-6-0-build-24238078.exe"