
# go install github.com/golang/protobuf/protoc-gen-go@latest

# dart pub global activate protoc_plugin
# export PATH="$PATH":"$HOME/.pub-cache/bin"

#protoc --go_out=go/ protos/*.proto
#protoc --dart_out=lib/  protos/*.proto

protoc --dart_out=lib/ --go_out=go/ protos/*.proto
