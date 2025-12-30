@echo off
echo Настройка git...
git config --global user.email "public.ninja@gmail.com"
git config --global user.name "RomchikChan"

echo Добавление файлов...
git add .

echo Создание коммита...
git commit -m "Initial commit"

echo Отправка на GitHub...
git remote remove origin 2>nul
git remote add origin https://github.com/RomchikChan/music-library.git
git push -u origin main

if errorlevel 1 (
    echo Попытка отправить в master...
    git push -u origin master
)

pause