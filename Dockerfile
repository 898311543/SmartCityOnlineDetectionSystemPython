From debian

RUN echo "deb http://ftp.cn.debian.org/debian stretch main contrib non-free\ndeb http://ftp.cn.debian.org/debian stretch-updates main contrib non-free\ndeb http://ftp.cn.debian.org/debian-security/ stretch/updates main contrib non-free" > /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y python3 python3-pip default-libmysqlclient-dev

RUN pip3 install mysqlclient

RUN pip3 install twisted

WORKDIR /app

EXPOSE 8899 8848/udp

ENV NAME World

CMD ["python3","twiste.py"]
