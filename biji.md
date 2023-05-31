# 代码执行流程


## 1. BAT脚本

1. `@echo off`

    表示执行了这条命令后关闭所有命令(包括本身这条命令)的回显

2. `set COMMANDLINE_ARGS=--xformers`

    设置环境变量

3. `call webui.bat`

    调用外部脚本

4. `%~dp0`
   
    获取当前目录？？？
    ```
    set "VENV_DIR=%~dp0%venv"
    ```   

5. `%PYTHON% -c "" >tmp/stdout.txt 2>tmp/stderr.txt`

    %PYTHON% -c ""：作为字符串传入的程序(终止选项列表)
   
6. `%ERRORLEVEL%`

    判断前一条命令的错误返回值

7. `%PYTHON% -mpip --help`
    
    `python.exe -m pip <command> [options]`
   
8. `dir path_to_python.exe`

    ```
     驱动器 F 中的卷是 My Passport
     卷的序列号是 601A-71BE
    
     F:\workspace\github\xiedongmingming\stable-diffusion-webui\venv\Scripts 的目录
    
    2023/04/26  14:49           233,472 python.exe
                   1 个文件        233,472 字节
                   0 个目录 1,512,758,337,536 可用字节
    ```
   
9. `for /f "delims=" %%i in ('CALL %PYTHON% -c "import sys; print(sys.executable)"') do set PYTHON_FULLNAME="%%i"`

    "for /f"：常用来解析文本，读取字符串。分工上，DELIMS负责切分字符串，而TOKENS负责提取字符串。如果把字符串当作蛋糕，DELIMS像刀子，用来切蛋糕，TOKENS像叉子，用来取切好的蛋糕。
    
10. `exit /b`

11. `size=%%~zi`


## 源码分析


[参考文档](https://zhuanlan.zhihu.com/p/618320432)