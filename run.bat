@echo off
echo ========================================================
echo   Starting Phantom AI Visual Studio...
echo ========================================================

REM Try py launcher with Python 3.14 first, then Python 3.11, then default python
py -3.14 -m streamlit run app.py
if %ERRORLEVEL% NEQ 0 (
    echo [INFO] Falling back to default python -m streamlit...
    python -m streamlit run app.py
)
pause
