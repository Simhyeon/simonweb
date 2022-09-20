all:
	mkdir public -p
	SITE_RELEASE=true
	rad template/macro.r4d template/index.html        -o public/index.html        -a fin+env -s
	rad template/macro.r4d template/aboutme.html      -o public/aboutme.html      -a fin+env -s
	rad template/macro.r4d template/portfolio_kr.html -o public/portfolio_kr.html -a fin+env -s
	cp -rf src/* public/

serve:
	miniserve public --index index.html

test:
	mkdir test -p
	rad template/macro.r4d template/index.html        -o test/index.html        -a fin+env -s
	rad template/macro.r4d template/aboutme.html      -o test/aboutme.html      -a fin+env -s
	rad template/macro.r4d template/portfolio_kr.html -o test/portfolio_kr.html -a fin+env -s
	cp -rf src/* test/

serve-test:
	miniserve test --index index.html

.PHONY: all test serve serve-test
