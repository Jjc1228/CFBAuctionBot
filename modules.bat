@echo off
REM Check if Conda is installed
where conda >nul 2>nul
if %errorlevel% == 0 (
    echo Conda detected. Installing packages in Conda environment...

    REM Activate Conda environment
    conda activate cv

    REM Install packages using Conda
    conda install --yes pytesseract PyQt6 opencv numpy

    REM Install non-Conda packages with pip
    pip install keyauth
) else (
    echo Conda not detected. Installing packages using pip...

    REM Install packages using pip
    pip install -r requirements.txt
)

echo Setup complete.
pause
