@echo off
pip install -r requirements.txt

for /f "delims=" %%i in ('python -c "import imageio_ffmpeg; print(imageio_ffmpeg.get_ffmpeg_exe())"') do set FFMPEG_PATH=%%i

pyinstaller --noconfirm --onefile --windowed --name Velyro --icon velyro.ico ^
  --add-data "velyro_small.png;." ^
  --add-binary "%FFMPEG_PATH%;." ^
  velyro.py

echo.
echo Gotowe! Plik dist\Velyro.exe jest w pelni samodzielny.
pause
