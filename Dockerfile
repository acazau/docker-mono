<<<<<<< HEAD
FROM acazau/docker-base
=======
FROM acazau\docker-base
>>>>>>> d1fba1bd4c1455ce50321c456b9c86b6fb40362f
RUN apt-get update
RUN apt-get install -y mono-devel

RUN apt-get install -y libtool autoconf g++ gettext make git
RUN git clone https://github.com/mono/mono
RUN cd mono && \ 
    ./autogen.sh   --prefix /usr && \
    make get-monolite-latest && \
    make && \
    make install