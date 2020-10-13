clean:
	-rm -rf ./build

publish:
	nim c -r website

deploy: clean publish
	-git branch -D gh-pages
	-git push origin --delete gh-pages
	ghp-import -n -c "blog.angelfish.be" -m "Publishing blog" -p -f build
