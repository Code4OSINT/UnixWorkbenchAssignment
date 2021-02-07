# The makefile should produce the README.md which should contain the following information:

# The title of the project.
# The date and time at which make was run.
# The number of lines of code contained in guessinggame.sh.
# The README.md should be produced entirely from the makefile and should not be edited by hand.
readme.md:
	echo "Title of the project: " > readme.md
	pwd | rev | cut -d "/" -f -1 | rev >> readme.md
	echo "  \nDate & time: " >> readme.md
	date >> readme.md
	echo "  \nNumber of lines: " >> readme.md
	cat guessinggame.sh | wc -l >> readme.md