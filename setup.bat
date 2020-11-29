@echo off

pip install -r requirements.txt
:: (honestly unsure what this is even necessary for but whatever)
python setup.py install
if not exist %~dp0\convert (
  mkdir %~dp0\convert
)