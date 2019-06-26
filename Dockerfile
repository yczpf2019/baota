FROM pch18/baota:_base6.0
MAINTAINER pch18.cn

RUN cd /www/server/panel \
    && echo '["linuxsys", "nginx", "php-7.3"]' > ./config/index.json
    
RUN bash ./install/install_soft.sh 0 install nginx 1.15
RUN bash ./install/install_soft.sh 0 install php 7.3 | echo 0

VOLUME ["/www","/www/wwwroot"]
