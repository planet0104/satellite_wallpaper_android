call npm run tauri android init

echo on

chcp 65001

@REM cargo install rust-script

@REM mipmap-hdpi
@REM ic_launcher.png(49x49)
@REM ic_launcher_foreground.png(162x162)
@REM ic_launcher_round.png(49x49)

rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 49 49 "./src-tauri/gen/android/app/src/main/res/mipmap-hdpi/ic_launcher.png"
rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 162 162 "./src-tauri/gen/android/app/src/main/res/mipmap-hdpi/ic_launcher_foreground.png"
rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 49 49 "./src-tauri/gen/android/app/src/main/res/mipmap-hdpi/ic_launcher_round.png"

@REM mipmap-mdpi
@REM ic_launcher.png(48x48)
@REM ic_launcher_foreground.png(108x108)
@REM ic_launcher_round.png(48x48)

rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 48 48 "./src-tauri/gen/android/app/src/main/res/mipmap-mdpi/ic_launcher.png"
rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 108 108 "./src-tauri/gen/android/app/src/main/res/mipmap-mdpi/ic_launcher_foreground.png"
rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 48 48 "./src-tauri/gen/android/app/src/main/res/mipmap-mdpi/ic_launcher_round.png"

@REM mipmap-xhdpi
@REM ic_launcher.png(96x96)
@REM ic_launcher_foreground.png(216x216)
@REM ic_launcher_round.png(96x96)

rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 96 96 "./src-tauri/gen/android/app/src/main/res/mipmap-xhdpi/ic_launcher.png"
rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 216 216 "./src-tauri/gen/android/app/src/main/res/mipmap-xhdpi/ic_launcher_foreground.png"
rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 96 96 "./src-tauri/gen/android/app/src/main/res/mipmap-xhdpi/ic_launcher_round.png"

@REM mipmap-xxhdpi
@REM ic_launcher.png(144x144)
@REM ic_launcher_foreground.png(324x324)
@REM ic_launcher_round.png(144x144)

rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 144 144 "./src-tauri/gen/android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png"
rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 324 324 "./src-tauri/gen/android/app/src/main/res/mipmap-xxhdpi/ic_launcher_foreground.png"
rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 144 144 "./src-tauri/gen/android/app/src/main/res/mipmap-xxhdpi/ic_launcher_round.png"

@REM mipmap-xxxhdpi
@REM ic_launcher.png(192x192)
@REM ic_launcher_foreground.png(432x432)
@REM ic_launcher_round.png(192x192)

rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 192 192 "./src-tauri/gen/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png"
rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 432 432 "./src-tauri/gen/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher_foreground.png"
rust-script .\resize_image.rs "./src-tauri/icons/icon.png" 192 192 "./src-tauri/gen/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher_round.png"

@echo off

echo App图标替换完成! 🌻 🐕 🎉