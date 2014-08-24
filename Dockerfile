FROM acazau/docker-base
RUN apt-get update
RUN apt-get install -y mono-devel

RUN apt-get install -y libtool autoconf g++ gettext make git
RUN git clone https://github.com/mono/mono
RUN cd mono &amp;&amp; \ 
    ./autogen.sh   --prefix /usr &amp;&amp; \
    make get-monolite-latest &amp;&amp; \
    make &amp;&amp; \
    make install