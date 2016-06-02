# enable STL-pretty-printer plugin
python
import sys
sys.path.insert(0, "/usr/share/gcc-6/python")
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end

# disassemble in intel-style
set disassembly-flavor intel
