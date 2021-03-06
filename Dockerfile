FROM debian:stable-slim

RUN apt-get update \
	&& apt-get install -y curl \
	&& curl -Lo hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.55.2/hugo_extended_0.55.2_Linux-64bit.deb \
	&& dpkg -i hugo.deb && rm hugo.deb \
	&& curl -sL https://deb.nodesource.com/setup_11.x | bash - \
	&& apt-get install -y nodejs \
	&& npm install --global autoprefixer postcss-cli

CMD /bin/bash
