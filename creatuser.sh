#!/bin/bash
sudo adduser --disabled-password --gecos "" vrangani &&
echo new user created &&
cd ~vrangani && sudo mkdir .ssh && sudo touch .ssh/authorized_keys &&
echo ssh dir and auth keys file created &&
cd ~vrangani/.ssh/ && cd .. &&
sudo chown -R vrangani:vrangani .ssh &&
echo owner and group owner changed &&
sudo -H -u vrangani bash -c 'chmod 700 .ssh' &&
sudo -H -u vrangani bash -c 'chmod 600  /home/vrangani/.ssh/authorized_keys' &&
echo permissions restricted to new user only &&
sudo -H -u vrangani bash -c 'echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDLkZL2FBmHxtVDYRvNMkUS+fmaJPZ+MDRhhDOBa5c80YOh8wO8Chu3828UkP3kjubS0P1rixT09PrrOr6/Icqi3n8VWCQZDO1l8rD5jbd05pxp6Xgu4RXLF9olGA900Igf57j4/uoow4zv6M+iHTyc+iwjTlY0PjfpF+AvSgJgMcDn2h3mM+uVhaIdqm49OkI+zklIArw8TwfJaYKHEo98o4N6JS1ko/gyzf3ZVgU1CuQhGBDSwdOKHeA7SxPv6H4r5FxefEWwLFaC0/GnRP92Pv/GqfbGLy1EBMVtkn2eggqOduie5Y+sf0onweDx9f51MNIL2HjoqqkCwbqawjmmrR5KfO94iORpbR7oIHhuSRPNvhqqvDKgJoCadBOWf5HojtS0K4zIQa7UlLtWHHdoA4c91llotV9R/PCiEGj8k1nypGVkZV1TaUXH4ei+vcruqjc+QDrpS18mWJ/MVnHigECzp0iVmnAnVT9IT5IG3LtOLbEY5ZEeM0qgDXskJIE= venky@DESKTOP-FOCUSDC >> ~vrangani/.ssh/authorized_keys'
echo pub key copied to auth key file.
echo -e "dnis@123\ndnis@123" | sudo passwd vrangani
echo new password set.
sudo usermod -aG sudo vrangani
echo New user given sudo permissions.
y
