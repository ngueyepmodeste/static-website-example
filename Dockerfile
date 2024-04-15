FROM nginx:1.21.1
LABEL version="1.0" maintainer="NGUEYEP_MODESTE_DOLUMIN"
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y git curl && \
    rm -rf /usr/share/nginx/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
