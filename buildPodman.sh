#extract
cd app
rm -rf BOOT-INF
unzip -o impl_java.jar
rm -rf META-INF
rm -rf org
rm -rf classes
mv -f BOOT-INF/classes .
rm -rf lib
mv -f BOOT-INF/lib .
rm -rf BOOT-INF
cd ..

# compile
java -version
cd src/main/java
find -name "*.java" > sources.txt
javac -cp ../../../app/lib/*:../../../lib/*:../../../app/classes @sources.txt
rm sources.txt
cp -r . ../../../app/classes
cd ..
cd ..
cd ..

# extend the container
podman build -t opentesting-extended:1.33 .

# run the container
podman rm -f $(podman ps -af name=opentesting-extended -q)
podman run -p 50000:50000 --name=opentesting-extended opentesting-extended:1.33
