How to build
============

```
JBAKE_BASED=$HOME/uw/oz.cz/jbake-based

## Run the Texy converter
docker run --rm -p 8022:80 ondrazizka/texy-service:latest
cd $JBAKE_BASED;
## Remove the old output and rebuild all
rm -rf output/ cache/ && jbake -b

## Update the web
TARGET_DIR=../github.io/
cd $TARGET_DIR
git co master
git pull
cd -
cp -rf output/* $TARGET_DIR
cd $TARGET_DIR
git commit -am 'Update'
git push origin master
```

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
