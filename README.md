# impacket-symlinks

###### This helps to make symlinks for your impacket installation!
###### Hope this helps you :)

## Usage:

```bash
git clone https://github.com/SecureAuthCorp/impacket.git
cd impacket
sudo pip2 install -r requirements.txt
sudo python2 setup.py install
curl -o- https://raw.githubusercontent.com/maniac-en/impacket-symlinks/link.sh | tac | tac | sudo bash -s examples
```

