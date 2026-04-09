set -e
grim -t ppm -g \"$(slurp -d -c AA87F2 -B 0000009a -b 0000009a -x AA87F2 -o -F monospace)\" - | satty --filename - --copy-command=wl-copy --annotation-size-factor 2.0 --output-filename=\"~/Pictures/Screenshots/Screenshot from %Y-%m-%d %H:%M:%S.png\" --actions-on-enter=\"save-to-clipboard,exit\" --brush-smooth-history-size=5 --disable-notifications
