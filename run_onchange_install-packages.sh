{{ if ne .chezmoi.os "linux" }}
#!/bin/sh
curl -sS https://starship.rs/install.sh >install.sh
chmod +x install.sh
./install.sh -f -b ~/bin/
rm install.sh
{{ end }}
