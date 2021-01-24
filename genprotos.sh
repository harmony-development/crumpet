#!/usr/bin/env bash

set -e

for dir in $(find "protocol" -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq); do
    echo "Generating files for in ${dir}..."

    find "${dir}" -name '*.proto'

    protoc \
    --experimental_allow_proto3_optional \
    --plugin="$(which protoc-gen-d)" \
    --proto_path=protocol \
    -Iprotocol \
    --d_out=source \
    $(find "${dir}" -name '*.proto')

    protoc \
    --experimental_allow_proto3_optional \
    --plugin=protoc-gen-grpc=/usr/local/bin/grpc_dlang_plugin \
    --proto_path=protocol \
    --grpc_out=./source/protocol \
    $(find "${dir}" -name '*.proto')

done

sed -i 's/import harmonytypes.v1/import protocol.harmonytypes.v1/g' $(find ./source/protocol -name '*.d')
sed -i 's/import chat.v1/import protocol.chat.v1/g' $(find ./source/protocol -name '*.d')
sed -i 's/protoDefaultValue!bytes/[]/g' $(find ./source/protocol -name '*.d')

sed -i 's/ Message / protocol.harmonytypes.v1.types.Message /g' $(find ./source/protocol/chat/v1 -name '*.d')
sed -i 's/!Message/!(protocol.harmonytypes.v1.types.Message)/g' $(find ./source/protocol/chat/v1 -name '*.d')
sed -i 's/Message\[\]/protocol.harmonytypes.v1.types.Message\[\]/g' $(find ./source/protocol/chat/v1 -name '*.d')

sed -i 's/import google.protobuf.descriptor;//g' $(find ./source/protocol -name '*.d')
