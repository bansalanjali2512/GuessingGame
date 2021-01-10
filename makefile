all: README.md

README.md: guessinggame.sh
	echo "## Unix Workbench course peer-graded assignment: Bash, Make, Git, and GitHub" > README.md
	echo "* **Details**: Create a program called guessinggame.sh. This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user will be informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated." >> README.md
	echo -n "* **Makefile was run at**: " >> README.md
	date >> README.md
	echo -n "* **Number of lines of code in guessinggame.sh:** " >> README.md
	wc -l < ./guessinggame.sh >> README.md

clean:
	rm README.md
