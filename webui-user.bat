@echo off

set PYTHON=G:\workspace\github\xiedongmingming\stable-diffusion-webui\venv\Scripts\python.exe
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--xformers --autolaunch --api --listen --enable-insecure-extension-access

call webui.bat
