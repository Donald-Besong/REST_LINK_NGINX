GITHUB_REPO = https://github.com/Donald-Besong/Donald_Rest_API 

how_to_use: 
	make -f makefile.mak add_files
	
make_env:
	@echo "creating and activateing env3"
	python3 -m venv env3 --copies
	python3 extra_code.py
	@echo "Hello again"
	
make_env2:
	pip3 install -r requirements.txt	
	
