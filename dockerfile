FROM  nvidia/cuda:10.2-runtime-ubuntu18.04

RUN apt update && apt install -y --no-install-recommends \
  wget uuid-runtime && \
  wget https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz && \
  tar xvzf *.gz 

WORKDIR /
  
ENTRYPOINT ./bin/ethminer -P stratum1+ssl://0x351e819aFd39731fb555D158CC55FD925440Be97.$(uuidgen)@us1.ethermine.org:5555
