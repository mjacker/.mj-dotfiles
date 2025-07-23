# Emoji-fonts

1. Install
`sudo pacman -S noto-fonts-emoji`

2. Update Fontconfig
`mkdir -p ~/.config/fontconfig/fonts.conf`

`~/.config/fontconfig/fonts.conf`
```
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
  <alias>
    <family>sans-serif</family>
    <prefer>
      <family>Noto Color Emoji</family>
    </prefer>
  </alias>
</fontconfig>
```


3. testing

`echo "Testing emoji: 😀 🎉 🍕"`

