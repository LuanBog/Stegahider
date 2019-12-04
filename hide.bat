@echo off
cls

echo                                                                  Stegahider
echo.
echo This is tool to hide messages in images (Steganography)
echo By: TheBigBro122
echo.

pause
cls
echo.
echo Required: 1) 1 image file (.png, .jpg), 1 text files (.txt)
echo           2) Image file and Text file must be in the same directory
echo.
set /p directory="File Directory: "
set /p imageName="Image File Name: "
set /p textName="Text File Name: "
set /p imageType="Image Type: "
set /p secretName="Wanted Secret Image File Name: "

copy /b "%directory%\%imageName%.%imageType%" + "%directory%\%textName%.txt" "%directory%\%secretName%.%imageType%"

cls

echo Done! Secret File: %directory%\%secretName%.%imageType%
echo.
echo How to read the secret message after hiding? Rename %secretName%.%imageType% to "%secretName%.txt", open it and scroll down to the bottom and you can see the message.

pause >nul
exit
