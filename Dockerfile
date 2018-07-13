FROM nginx:mainline-alpine
RUN apk --no-cache add logrotate
COPY default.conf /etc/nginx/conf.d/
COPY logrotate.conf /
COPY start.sh /
CMD ["/run.sh"]
