@echo off
REM ============================================================
REM  Double-click this file to launch the zoning-conflicts map.
REM  It starts a tiny local web server and opens your browser.
REM  Keep this window open while viewing. Close it when done.
REM ============================================================

cd /d "%~dp0"

echo Starting local server...
echo.
echo When your browser opens, the map should load.
echo If the browser does not open automatically, go to:
echo     http://localhost:8000
echo.
echo To STOP: close this window (or press Ctrl+C).
echo ============================================================

REM Open the browser after a short delay, then start the server.
start "" "http://localhost:8000/index.html"

REM Try python, then py launcher, whichever exists.
python -m http.server 8000 2>nul || py -m http.server 8000
