FROM openjdk:11

RUN apt-get update && apt install postgresql-client-13 -y

RUN useradd -m image_gallery

COPY --chown=image_gallery:image_gallery ./temp/ig/ ./temp/ig/
COPY --chown=image_gallery:image_gallery ./temp/tmp ./temp/tmp
COPY --chown=image_gallery:image_gallery ./app/createDB.sh ./app/createDB.sh
COPY --chown=image_gallery:image_gallery ./app-all.jar ./app/app-all.jar
WORKDIR /app
USER image_gallery
EXPOSE 5000
EXPOSE 5555
CMD java -jar app-all.jar
