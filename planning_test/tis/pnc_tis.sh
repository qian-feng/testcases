#!/bin/bash
set -x

# to generate the filesystem if needed:
# tis-mkfs -o tis/filesystems/pnc_map.c -local "modules/map/data/sunnyvale_loop/base_map_test.bin:modules/map/data/sunnyvale_loop/base_map_test.bin"
# superseeded by
# tis-mkfs -o tis/filesystems/pnc_map.c -local "modules/map/data/sunnyvale_loop/base_map_test.bin:modules/map/hdmap/test-data/base_map.bin"

FILES=(
    /home/tis/1.36-demo/share/tis-kernel/libcxx/vector.cpp
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/io/strtod.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/io/tokenizer.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/io/zero_copy_stream.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/io/zero_copy_stream_impl.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/repeated_field.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/stubs/structurally_valid.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/wire_format_lite.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/message_lite.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/extension_set.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/descriptor_database.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/descriptor.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/message.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/struct.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/timestamp.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/api.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/duration.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/any.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/field_mask.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/descriptor.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/wrappers.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/source_context.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/type.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/empty.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/compiler/profile.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/compiler/plugin.pb.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/compiler/cpp/cpp_file.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/stubs/common.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/generated_message_util.cc
    /home/trustinsoft/git/apollo/tis/docker_internal/src/com_google_protobuf/src/google/protobuf/stubs/once.cc
    /home/trustinsoft/git/apollo/tis/extern/error_code.ipp
    /home/trustinsoft/git/apollo/tis/docker_internal/src/boost_1_54_0/libs/system/src/error_code.cpp
    /home/trustinsoft/git/apollo/bazel-genfiles/modules/prediction/proto/prediction_obstacle.pb.cc
    /home/trustinsoft/git/apollo/modules/planning/common/lag_prediction.cc
    /home/trustinsoft/git/apollo/modules/planning/common/obstacle_tis_test.cc
)

OPT=(
    #-fs-no-err tis/filesystems/pnc_map_filesystem.c # filesystem used by the test
    #-fs-no-err tis/filesystems/urandom_filesystem.c
    -gui
    -slevel 10
    -val
    -val-builtin 'cos:Frama_C_cos_precise,sin:Frama_C_sin_precise'
    -undefined-pointer-comparison-propagate-all
    -no-warn-signed-overflow
    -val-malloc-plevel 100
    -val-slevel-merge-after-loop=-@all
)

/home/trustinsoft/git/apollo/modules/planning/common/tis/protobuf.sh "${FILES[@]}" "${OPT[@]}" "$@"
