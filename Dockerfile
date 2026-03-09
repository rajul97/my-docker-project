FROM nginx:latest
LABEL maintainer="2523934@student.uwtsd.ac.uk"
LABEL version="1.0"
RUN rm -rf /usr/share/nginx/html/*
COPY app/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]