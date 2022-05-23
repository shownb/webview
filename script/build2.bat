@echo off

echo Prepare directories...
set script_dir=%~dp0
set src_dir=%script_dir%..
set build_dir=%script_dir%..\build
mkdir "%build_dir%"

go get github.com/polevpn/webview
go mod init view
go mod tidy
go build -ldflags="-H windowsgui" -o webview-example.exe
