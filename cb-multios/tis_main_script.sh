PROJ_PATH=${PROJ_PATH}

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
    -val-slevel-merge-after-loop=@all                       
    -fclang-cpp-extra-args=-mno-sse                       
)                       
                       
DEFINE=(                       
    -D GPGRT_ENABLE_ES_MACROS                        
    -D HAVE_SYS_SELECT_H                        
    -D MAXLOGLEVEL=LOGL_NONE                        
    -D FORTIFY_SOURCE=0                     
    -D LINUX                     
    -D errno=__cgc_errno                     
    -D _ERR_H
    -D __USE_MISC
    )                       
                       
SYSTEM_MODELIZATION=(                       
    /home/trustinsoft/tis/system_modelisation/gcc_builtins.c                       
    /home/trustinsoft/tis/system_modelisation/math.c                        
    /home/trustinsoft/tis/system_modelisation/stdio.c                       
    /home/trustinsoft/tis/system_modelisation/stdlib.c                        
    /home/trustinsoft/tis/system_modelisation/syscall.c                       
    /home/trustinsoft/tis/system_modelisation/threads.c                       
    #/home/trustinsoft/tis/system_modelisation/time.c                       
    /home/trustinsoft/tis/system_modelisation/unistd.c                       
)                       
                       
INCLUDE=(                       
    -I .                        
    -I ${PROJ_PATH}tis-include
    -I /home/tis/1.36/share/tis-kernel/libc/
    -I ${PROJ_PATH}include      
    -I ${PROJ_PATH}challenges/FUN/lib      
    -I ${PROJ_PATH}challenges/FUN/src      
    -I ${PROJ_PATH}challenges/FUN/include      
    -I ${PROJ_PATH}include/tiny-AES128-C      
    -I /home/trustinsoft/tis/includes                        
    -I /home/trustinsoft/tis/docker_internal/local/include/
    #-I /home/trustinsoft/tis/docker_internal/include/comm/x86_64-linux-gnu
    #-I /usr/src/linux-headers-4.4.0-141/include/linux/
)                       
                       
LINK=(                       
    /home/tis/1.36/share/tis-kernel/libc/sys/mman.c
    ${PROJ_PATH}challenges/FUN/lib/memcmp.c      
    ${PROJ_PATH}challenges/FUN/lib/realloc.c      
    ${PROJ_PATH}challenges/FUN/lib/strchr.c      
    ${PROJ_PATH}challenges/FUN/lib/malloc.c      
    ${PROJ_PATH}challenges/FUN/lib/strcat.c      
    ${PROJ_PATH}challenges/FUN/lib/calloc.c      
    ${PROJ_PATH}challenges/FUN/lib/memmove.c      
    ${PROJ_PATH}challenges/FUN/lib/memchr.c      
    ${PROJ_PATH}challenges/FUN/lib/strcasecmp.c      
    ${PROJ_PATH}challenges/FUN/lib/strncmp.c      
    ${PROJ_PATH}challenges/FUN/src/tornado.c      
    ${PROJ_PATH}challenges/FUN/lib/strncpy.c      
    ${PROJ_PATH}challenges/FUN/lib/memcpy.c      
    ${PROJ_PATH}include/ansi_x931_aes128.c      
    ${PROJ_PATH}challenges/FUN/lib/strncasecmp.c      
    ${PROJ_PATH}challenges/FUN/lib/printf.c      
    ${PROJ_PATH}challenges/FUN/lib/strsep.c      
    ${PROJ_PATH}challenges/FUN/lib/strlen.c      
    ${PROJ_PATH}challenges/FUN/lib/strdup.c      
    ${PROJ_PATH}challenges/FUN/lib/strcmp.c      
    ${PROJ_PATH}challenges/FUN/lib/memset.c      
    #${PROJ_PATH}include/maths.S      
    ${PROJ_PATH}include/libcgc.c      
    ${PROJ_PATH}challenges/FUN/lib/free.c      
    ${PROJ_PATH}challenges/FUN/src/main.c      
    ${PROJ_PATH}challenges/FUN/lib/strcpy.c      
    ${PROJ_PATH}challenges/FUN/lib/ctype.c      
    ${PROJ_PATH}challenges/FUN/lib/malloc_common.c      
    ${PROJ_PATH}include/tiny-AES128-C/aes.c      
    ${PROJ_PATH}challenges/FUN/lib/strtol.c      
    )                       
                       
RUNTIME=(                       
    /home/trustinsoft/tis/runtimes/libcxx-runtime.cpp                       
)                       
                       
tis-analyzer++ "${OPT[@]}" "${DEFINE[@]}" "${INCLUDE[@]}" "${SYSTEM_MODELIZATION[@]}" "${LINK[@]}" $@ -main main ${PROJ_PATH}challenges/FUN/src/main.c
