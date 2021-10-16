.PHONY: download
download: 
	curl -O https://wordpress.org/latest.zip

.PHONY: loop
loop: download
	number=1 ; while [[ $$number -le $(ENV) ]] ; do \
		unzip latest.zip && mv wordpress site$$number ; \
		((number = number + 1)) ; \
	done