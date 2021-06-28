#!/bin/sh

m4 -I template template/index.html > src/index.html
m4 -I template template/aboutme.html > src/aboutme.html
m4 -I template template/portfolio_kr.html > src/portfolio_kr.html
