use log::info;

// Learn more about Tauri commands at https://tauri.app/v1/guides/features/command
#[tauri::command]
fn greet(name: &str) -> String {
    let msg = format!("哈喽, {}! 你收到了来自Rust的消息!!", name);
    info!("{msg}");
    msg
}

#[cfg_attr(mobile, tauri::mobile_entry_point)]
pub fn run() {

    #[cfg(target_os = "android")]
    {
        use log::LevelFilter;
        use android_logger::{Config,FilterBuilder};
        
        android_logger::init_once(
            Config::default()
                .with_max_level(LevelFilter::Info)
                .with_tag("卫星壁纸")
                .with_filter(
                    FilterBuilder::new()
                        .parse("debug,hello::crate=error")
                        .build())
        );
    }

    tauri::Builder::default()
        .plugin(tauri_plugin_window::init())
        .plugin(tauri_plugin_shell::init())
        .invoke_handler(tauri::generate_handler![greet])
        .run(tauri::generate_context!())
        .expect("error while running tauri application");
}
