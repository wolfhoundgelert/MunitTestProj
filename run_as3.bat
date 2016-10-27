haxelib run munit gen || exit /b
openfl build testproject.xml flash || exit /b
haxelib run munit test -as3 || exit /b