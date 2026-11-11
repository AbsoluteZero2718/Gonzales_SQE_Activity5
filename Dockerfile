FROM nginx:alpine
USER root
RUN apt-get update && apt-get install -y libatomic1 
USER jenkins
COPY dist/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
