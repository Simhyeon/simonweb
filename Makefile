all:
	mkdir public -p
	rad template/index.html        -o public/index.html        -a fin -s
	rad template/aboutme.html      -o public/aboutme.html      -a fin -s
	rad template/portfolio_kr.html -o public/portfolio_kr.html -a fin -s
