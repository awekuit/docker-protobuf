# docker-protobuf
for old protobuf

# Usage

```
$ docker run -it -v `pwd`/protobuf/:/protobuf -v `pwd`/generated/:/generated awekuit/protobuf:2.5.0 protoc /protobuf/XXXX.proto --java_out=/generated/ --proto_path=/protobuf/
```
