#!/usr/bin/env bash

set -e

for dir in $(find "protocol" -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq); do
    echo "Generating files for in ${dir}..."

    find "${dir}" -name '*.proto'

    # -Iprotocol \
    protoc \
    --proto_path=protocol \
    --d_out=source \
    --hrpc_out=source \
    --hrpc_opt=d_client \
    $(find "${dir}" -name '*.proto')

done

sed -i 's/import harmonytypes.v1/import protocol.harmonytypes.v1/g' $(find ./source/protocol -name '*.d')
sed -i 's/import chat.v1/import protocol.chat.v1/g' $(find ./source/protocol -name '*.d')
sed -i 's/protoDefaultValue!bytes/[]/g' $(find ./source/protocol -name '*.d')

sed -i 's/ Message / protocol.harmonytypes.v1.types.Message /g' $(find ./source/protocol/chat/v1 -name '*.d')
sed -i 's/!Message/!(protocol.harmonytypes.v1.types.Message)/g' $(find ./source/protocol/chat/v1 -name '*.d')
sed -i 's/Message\[\]/protocol.harmonytypes.v1.types.Message\[\]/g' $(find ./source/protocol/chat/v1 -name '*.d')

sed -i 's/import google.protobuf.descriptor;//g' $(find ./source/protocol -name '*.d')

sed -i '$aimport harmonytemplates.templates;' $(find ./source/protocol -name '*.d')
