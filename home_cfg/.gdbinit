# enable STL-pretty-printer plugin
#python
#import sys
#sys.path.insert(0, "/usr/share/gcc-6/python")
#from libstdcxx.v6.printers import register_libstdcxx_printers
#register_libstdcxx_printers (None)
#end

# disassemble in intel-style
set disassembly-flavor intel

# TUI stuff
focus cmd
set tui mouse-events off

set pagination off
set print elements unlimited

# helper funcion to print ascii and hex when dumping memory part
# https://stackoverflow.com/questions/25786982/how-can-gdb-show-both-hex-and-ascii-when-examing-memory
define xac
    dont-repeat
    set $addr = (char *)($arg0)
    set $endaddr = $addr + $arg1
    while $addr < $endaddr
        printf "%p: ", $addr
        set $lineendaddr = $addr + 8
        if $lineendaddr > $endaddr
            set $lineendaddr = $endaddr
        end
        set $a = $addr
        while $a < $lineendaddr
            printf "0x%02x ", *(unsigned char *)$a
            set $a++
        end
        printf "'"
        set $a = $addr
        while $a < $lineendaddr
            printf "%c", *(char *)$a
            set $a++
        end
        printf "'\n"
        set $addr = $addr + 8
    end
end

document xac
usage: xac address count
end
