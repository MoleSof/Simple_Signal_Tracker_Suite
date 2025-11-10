sudo apt install nmcli nmap wireshark tcpdump aircrack-ng -y
#add fix for complete even if one fails to install
#Add error loging or force display with no quit on end
sudo apt install build-essential git libwebsockets-dev pkg-config \
zlib1g-dev libnl-3-dev libnl-genl-3-dev libcap-dev libpcap-dev \
libnm-dev libdw-dev libsqlite3-dev libprotobuf-dev libprotobuf-c-dev \
protobuf-compiler protobuf-c-compiler libsensors-dev libusb-1.0-0-dev \
python3 python3-setuptools python3-protobuf python3-requests \
python3-numpy python3-serial python3-usb python3-dev python3-websockets \
libubertooth-dev libbtbb-dev libmosquitto-dev librtlsdr-dev librtl rtl-433
#librtlsdr0 or librtlsdr2 compplete even if one fails. On some older distributions, libprotobuf-c-dev may be called libprotobuf-c0-dev, and libsensors-dev may be called libsensors4-dev
wget -O - https://www.kismetwireless.net/repos/kismet-release.gpg.key --quiet | gpg --dearmor | sudo tee /usr/share/keyrings/kismet-archive-keyring.gpg >/dev/null
echo 'deb [signed-by=/usr/share/keyrings/kismet-archive-keyring.gpg] https://www.kismetwireless.net/repos/apt/release/focal focal main' | sudo tee /etc/apt/sources.list.d/kismet.list >/dev/null
sudo apt update
sudo apt install kismet
