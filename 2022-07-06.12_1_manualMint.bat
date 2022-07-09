@echo off
echo "Converting Starting..."
:: ffmpeg -i 2022-07-06.12_1.mp4 -vcodec h264 -acodec aac original_[inputName].mp4
ffmpeg -i 2022-07-06.12_1.mp4 -vf scale=1440:-1 -c:v libx264 -preset slow -crf 26 -c:a copy full_video_1440w.mp4
ffmpeg -i 2022-07-06.12_1.mp4 -vf scale=1280:-1 -c:v libx264 -preset slow -crf 26 -c:a copy full_video_1280w.mp4
ffmpeg -i 2022-07-06.12_1.mp4 -vf scale=1080:-1 -c:v libx264 -preset slow -crf 26 -c:a copy full_video_1080w.mp4
ffmpeg -i 2022-07-06.12_1.mp4 -vf scale=960:-1 -c:v libx264 -preset slow -crf 23 -t 00:00:30.0 preview_video_960w.mp4
ffmpeg -i 2022-07-06.12_1.mp4 -vf scale=480:-1 -c:v libx264 -preset slow -crf 23 -t 00:00:30.0 preview_video_480w.mp4
ffmpeg -i 2022-07-06.12_1.mp4 -vf "select=eq(n\,034)" -vframes 1 preview_image_2000w.jpg
ffmpeg -i 2022-07-06.12_1.mp4 -vf "select=eq(n\,034)" -vframes 1 preview_image_1024w.jpg
ffmpeg -i 2022-07-06.12_1.mp4 -vf "select=eq(n\,034)" -vframes 1 preview_image_960w.jpg
ffmpeg -i 2022-07-06.12_1.mp4 -vf "select=eq(n\,034)" -vframes 1 preview_image_480w.jpg
echo "Converting Done!"
