# MunitTestProj


Use bat-files to run the tests.

#1 App window doesn't start on neko, cpp, html5 when haxelib munit is added to the project:
	- Uncomment <haxelib name="munit" /> in project.xml;
	- Run app on neko or windows;
	
#2 Async tests don't work on neko and cpp:
	- See test/Test.hx;
	
#3 OpenFL Assets usage breaks the test on js.
