push:
	cp ~/.zshrc ./.zshrc
	cp -r ~/kutils ./kutils
	git add .
	git commit -m "updating .zshrc and copying kutils"
	git push