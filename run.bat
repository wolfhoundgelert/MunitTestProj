haxelib run munit gen || exit /b
openfl test testproject.xml neko || exit /b
openfl test testproject.xml cpp || exit /b
openfl build testproject.xml flash || exit /b
openfl build testproject.xml html5 || exit /b
haxelib run munit test || exit /b