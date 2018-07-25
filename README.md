How to build
============

## Run the Texy converter
docker run --rm -p 8022:80 ondrazizka/texy-service:latest
cd .../jbake-based;
## Remove the old output and rebuild all
rm -rf output/ cache/ && jbake -b
TARGET_DIR=../oz.cz/github.io/
cp -r output/* $TARGET_DIR
cd $TARGET_DIR

Inspiration
============


Nice designs:

http://www.ute-camper.co.uk/
http://luiyo.net/blog/
http://www.jdmartinho.com/blog/
https://manik.magar.me/
http://www.joern-karthaus.de/
http://www.baeldung.com/java-xpath


Reading (including about JBake):
https://siddheshrane.github.io/

https://www.thenewdynamic.org/tools/helper/
