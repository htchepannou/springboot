 #!/bin/sh

mvn clean install archetype:create-from-project -Dserver.port=8081

cd target/generated-sources/archetype

rm src/main/resources/archetype-resources/generate-archetype.sh
rm src/main/resources/archetype-resources/*.iml
rm src/main/resources/archetype-resources/*.md
rm -Rf src/main/resources/archetype-resources/.idea
rm -Rf src/main/resources/archetype-resources/log

cp ../../../.gitignore src/main/resources/archetype-resources

#mvn install

cd ../../..
