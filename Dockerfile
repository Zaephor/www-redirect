FROM nginx:mainline-alpine
RUN apk --no-cache add logrotate
COPY default.conf /etc/nginx/conf.d/
COPY nginx-logrotate.conf /etc/logrotate.d/nginx
COPY run.sh /
CMD ["/run.sh"]
