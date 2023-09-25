// Prevents additional console window on Windows in release, DO NOT REMOVE!!
#![cfg_attr(not(debug_assertions), windows_subsystem = "windows")]

mod downloader;
mod config;
mod def;

fn main() {
    #[cfg(desktop)]
    satellite_wallpaper_android_lib::run();
}
