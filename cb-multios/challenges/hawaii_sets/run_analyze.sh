OPT=(
    -gui
    -slevel 10
    -val
    -address-alignment 16
    -unsafe-arrays
    -val-clone-on-recursive-calls
    -val-malloc-plevel 400
    -val-ptr-total-comparison
    -64
    -no-cxx-annot
    -no-cxx-precompile
    -no-cxx-runtime
    -no-val-print
    -no-val-show-initial-state
    -no-val-show-progress
    -undefined-pointer-comparison-propagate-all
    -val-slevel-merge-after-loop=@all
    -kernel-msg-key pp
)

DEFINE=(
    -D GPGRT_ENABLE_ES_MACROS 
    -D HAVE_SYS_SELECT_H 
    -D MAXLOGLEVEL=LOGL_NONE 
)

SYSTEM_MODELIZATION=(
    /home/trustinsoft/tis/system_modelisation/math.c 
    /home/trustinsoft/tis/system_modelisation/stdio.c
    /home/trustinsoft/tis/system_modelisation/stdlib.c 
    /home/trustinsoft/tis/system_modelisation/syscall.c
    /home/trustinsoft/tis/system_modelisation/threads.c
    /home/trustinsoft/tis/system_modelisation/time.c
    /home/trustinsoft/tis/system_modelisation/unistd.c
)

INCLUDE=(
    -I /home/tis/1.38/share/tis-kernel/libc/
    -I /home/tis/1.38/include/c++/v1/support/xlocale/
    -I /home/trustinsoft/tis/includes
    -I /home/tis/cb-multios/challenges/hawaii_sets/lib/
    -I /home/tis/cb-multios/include
    -I /home/tis/cb-multios/challenges/hawaii_sets/src
)

LINK=(
    /home/tis/cb-multios/include/libcgc.c
    /home/tis/cb-multios/include/tiny-AES128-C/aes.c
    /home/tis/cb-multios/include/ansi_x931_aes128.c
    /home/tis/cb-multios/challenges/hawaii_sets/lib/stdlib.c 
    /home/tis/cb-multios/challenges/hawaii_sets/lib/mymath.c
    /home/tis/cb-multios/challenges/hawaii_sets/lib/printf.c
    /home/tis/cb-multios/challenges/hawaii_sets/src/struct_inits.c
    #/home/tis/workspace/lava_corpus/LAVA-M/base64/coreutils-8.24-lava-safe/lib/xmalloc.c
    #/home/tis/workspace/lava_corpus/LAVA-M/base64/coreutils-8.24-lava-safe/lib/base64.c
)

RUNTIME=(
    /home/trustinsoft/tis/runtimes/libcxx-runtime.cpp
)

tis-analyzer "${OPT[@]}" "${DEFINE[@]}" "${INCLUDE[@]}" "${SYSTEM_MODELIZATION[@]}" "${LINK[@]}" $@

