#!/usr/bin/env rust-script
//! Dependencies can be specified in the script file itself as follows:
//!
//! ```cargo
//! [dependencies]
//! image = "0.24.7"
//! ```

fn main() {
    // 获取命令行参数
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 5 {
        eprintln!("正确参数: src_path, target_width, target_height, target_path");
        return;
    }

    // 解析参数
    let src_image_path = &args[1];
    let target_width: u32 = args[2].parse().unwrap();
    let target_height: u32 = args[3].parse().unwrap();
    let target_image_path = &args[4];

    // 加载原始图像
    let src_image = image::open(src_image_path).unwrap();

    // 缩放图像
    let scaled_image = src_image.resize_exact(target_width, target_height, image::imageops::FilterType::Lanczos3);

    // 保存缩放后的图像
    scaled_image.save(target_image_path).unwrap();
}