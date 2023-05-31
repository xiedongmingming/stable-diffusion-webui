@echo off

set PYTHON=D:\workspace\stable-diffusion-webui\venv\Scripts\Python.exe
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--xformers --autolaunch --api --listen --enable-insecure-extension-access

call webui.bat
