# open testing extension template

Write your own adapter for OpenTesting tool and extend the container without forking the original project.

Please use same JDK as original version is using.

During startup the registered adapters are printed to the log.

### 1. Extract actual version from container ###
```
./extract.sh
```

### 2. place required libs in lib folder and code your adapter ###
   
you might want to use the extracted jars in your IDE classpath

### 3. extend and build the container ###
```
./build.sh
```
