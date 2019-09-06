@echo off

set SQUARESIZE=1

for %%i in (.\convert\*) do (
  python .\pixel2svg.py %%i --squaresize=%SQUARESIZE%
)