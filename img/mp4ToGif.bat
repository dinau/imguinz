set name=%~n1
ffmpeg -i "%name%".mp4  -vf scale=800:-1   "%name%".gif
