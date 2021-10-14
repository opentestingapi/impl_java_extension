# compile
java -version
cd src/main/java
find -name "*.java" > sources.txt
javac -cp ../../../app/libs/*:../../../lib/*:../../../app/classes @sources.txt
rm sources.txt
cd ..
cd ..
cd ..

# extend the container
docker build -t opentesting-extended:latest .

# run the container
docker rm -f $(docker ps -af name=opentesting-extended -q)
docker run -p 50000:50000 --name=opentesting-extended opentesting-extended:latest
