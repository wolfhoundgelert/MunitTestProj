haxelib run munit gen || exit /b
openfl build testproject.xml html5 || exit /b
haxelib run munit test -js || exit /b