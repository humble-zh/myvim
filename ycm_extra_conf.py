import os
import ycm_core

flags = [
        '-Wall',
        '-Wextra',
        '-Werror',
        '-Wno-long-long',
        '-Wno-variadic-macros',
        '-fexceptions',
        '-DNDEBUG',
        '-x',
        'c',
        '-I',
        '/usr/include',
        '-I',
        '/home/mi/humble/ev345/package/chrgrserv/src',
        '-I',
        '/home/mi/humble/ev345/staging_dir/target-mips_24kc_musl-1.1.15/usr/include',
        '-isystem',
        '/usr/lib/gcc/x86_64-linux-gnu/5/include',
        '-isystem',
        '/usr/include/x86_64-linux-gnu',
        '-isystem'
        '/usr/include/c++/5',
        '-isystem',
        '/usr/include/c++/5/bits'
        ]

SOURCE_EXTENSIONS = [ '.c', ]

def FlagsForFile( filename, **kwargs ):
    return {
            'flags': flags,
            'do_cache': True
            }
