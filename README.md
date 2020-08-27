# Useful Stuff

Useful scripts and more!

### Scripts

- Set wallpaper

    ```bash
    osascript -e 'tell application "System Events" to tell every desktop to set picture to "/Users/justisgipson/Desktop/Other/Wallpapers/peaks.jpg" as POSIX file'
    ```

- Check Bluetooth peripheral battery

    ```bash
    BATTLVL=$(ioreg -r -l -n AppleHSBluetoothDevice | egrep '"BatteryPercent" = |^ \| "Bluetooth Product Name" = '| sed 's/ | "Bluetooth Product Name" = "Magic Mouse 2"/ \| Mouse:/' | sed 's/ | "Bluetooth Product Name" = "Magic Keyboard with Numeric Keypad"/ \| Keyboard:/'| sed 's/ | | "BatteryPercent" = / /'); echo $BATTLVL```
    ```

- Install Homebrew

    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    ```
- Add Dock Space-tiles
    
    ```bash
    defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
    ```

### Other

`.zshrc`

[https://gist.github.com/justisGipson/f8dc04b336297b662fac4c8f30d01da7](https://gist.github.com/justisGipson/f8dc04b336297b662fac4c8f30d01da7)

`cloudSettingsVsCode.json`

[https://gist.github.com/justisGipson/fee421ee6e76266fc8643c87d0e59240](https://gist.github.com/justisGipson/fee421ee6e76266fc8643c87d0e59240)
