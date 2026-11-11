FROM nginx:alpine
RUN apt-get update && apt-get install -y libatomic1
COPY dist/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
