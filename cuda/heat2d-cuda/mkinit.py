#!/usr/bin/python
import os, sys, getopt, re, errno, random
import struct

class Usage(Exception):
    def __init__(self, msg):
        self.msg = msg

def main(argv=None):
    if argv is None:
        argv = sys.argv
    try:
        try:
            opts, args = getopt.getopt(argv[1:], "h", ["help"])
        except getopt.GetoptError, msg:
            raise Usage(msg)

        for o, a in opts:
            if o in ["-h", "--help"]:
                print(" Usage: %s [OPTIONS] LX LY FILE_NAME" % argv[0])
                print(" Options:")
                print("  -h, --help\t\t: This help message")
                print 
                return 2

            else:
                print(" %s: ignoring unhandled option" % o)

        if len(args) != 3:
            raise Usage(" Usage: %s [OPTIONS] LX LY FILE_NAME" % argv[0])

    except Usage, err:
        print(err.msg)
        print(" for help use --help")
        return 2

    Lx = int(args[0])
    Ly = int(args[1])

    buf = [float(0)]*Lx*Ly
    for i in range(0,Lx,16):
        x = random.randint(0,Lx-1)
        for j in range(Ly):
            buf[x+j*Lx] = 1.0

    for i in range(0,Ly,16):
        y = random.randint(0,Ly-1)
        for j in range(Lx):
            buf[y*Lx+j] = 1.0
    
    fmt = "".join(["f"]*Lx*Ly)
    buf = struct.pack(fmt, *buf)
    open(args[2], "w").write(str(buf))
    return 0
    
if __name__ == "__main__":
    sys.exit(main())
