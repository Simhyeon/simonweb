all:
	mkdir public -p
	rad template/macro.r4d template/index.html        -o public/index.html        -a fin -s
	rad template/macro.r4d template/aboutme.html      -o public/aboutme.html      -a fin -s
	rad template/macro.r4d template/portfolio_kr.html -o public/portfolio_kr.html -a fin -s
	cp -r src/* public/
