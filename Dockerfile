FROM nginx

MAINTAINER Kwanhooo

RUN rm /etc/nginx/conf.d/default.conf

RUN mkdir "/usr/share/nginx/log/"

ADD default.conf /etc/nginx/conf.d/

COPY dist/ /usr/share/nginx/html/


### RUN WITH THE FOLLOWING COMMAND ###

#docker run -p 10086:80 \
#--restart=always \
#-v /root/log/:/usr/share/nginx/log/ \
#--name power-life \
#-d power-life

######################################
