.PHONY: git_config git_del git_push_master 

git_config :
	git config user.email "v@gmail.com"
	git config user.name "rooid"

git_del :
	git status | grep 'deleted' | cut -d ":" -f2 | xargs git rm

git_push_master :
	git push -u origin master

start_server :
	python -m SimpleHTTPServer 9000


