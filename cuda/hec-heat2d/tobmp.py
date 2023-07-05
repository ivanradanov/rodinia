#Some key imports.
#Struct is used to create the actual bytes.
#It is super handy for this type of thing.
import struct, random, sys, getopt

class Usage(Exception):
    def __init__(self, msg):
        self.msg = msg


#Function to write a bmp file.  It takes a dictionary (d) of
#header values and the pixel data (bytes) and writes them
#to a file.  This function is called at the bottom of the code.
def bmp_write(d,the_bytes):
    mn1 = struct.pack('<B',d['mn1'])
    mn2 = struct.pack('<B',d['mn2'])
    filesize = struct.pack('<L',d['filesize'])
    undef1 = struct.pack('<H',d['undef1'])
    undef2 = struct.pack('<H',d['undef2'])
    offset = struct.pack('<L',d['offset'])
    headerlength = struct.pack('<L',d['headerlength'])
    width = struct.pack('<L',d['width'])
    height = struct.pack('<L',d['height'])
    colorplanes = struct.pack('<H',d['colorplanes'])
    colordepth = struct.pack('<H',d['colordepth'])
    compression = struct.pack('<L',d['compression'])
    imagesize = struct.pack('<L',d['imagesize'])
    res_hor = struct.pack('<L',d['res_hor'])
    res_vert = struct.pack('<L',d['res_vert'])
    palette = struct.pack('<L',d['palette'])
    importantcolors = struct.pack('<L',d['importantcolors'])
    #create the outfile
    outfile = open(d['filename'],'wb')
    #write the header + the_bytes
    outfile.write(mn1+mn2+filesize+undef1+undef2+offset+headerlength+width+height+\
                  colorplanes+colordepth+compression+imagesize+res_hor+res_vert+\
                  palette+importantcolors+the_bytes)
    outfile.close()

###################################    
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
                print(" Usage: %s [OPTIONS] LX LY FILE_NAME_IN BMP_FILE_OUT" % argv[0])
                print(" Options:")
                print("  -h, --help\t\t: This help message")
                print 
                return 2

            else:
                print(" %s: ignoring unhandled option" % o)

        if len(args) != 4:
            raise Usage(" Usage: %s [OPTIONS] LX LY FILE_NAME_IN BMP_FILE_OUT" % argv[0])

    except Usage, err:
        print(err.msg)
        print(" for help use --help")
        return 2

    Lx = int(args[0])
    Ly = int(args[1])
    datfile = args[2]
    bmpfile = args[3]
    #Here is a minimal dictionary with header values.
    #Of importance is the offset, headerlength, width,
    #height and colordepth.
    #Edit the width and height to your liking.
    #These header values are described in the bmp format spec.
    #You can find it on the internet. This is for a Windows
    #Version 3 DIB header.
    d = {
        'mn1':66,
        'mn2':77,
        'filesize':0,
        'undef1':0,
        'undef2':0,
        'offset':54,
        'headerlength':40,
        'width':Lx,
        'height':Ly,
        'colorplanes':1,
        'colordepth':24,
        'compression':0,
        'imagesize':0,
        'res_hor':0,
        'res_vert':0,
        'palette':0,
        'importantcolors':0,
        'filename': bmpfile,
        }

    fp = open(datfile, "rb")
    buf = fp.read()

    fmt = "".join(["f"]*Lx*Ly)
    buf = struct.unpack(fmt, buf)

    #Build the byte array.  This code takes the height
    #and width values from the dictionary above and
    #generates the pixels row by row.  The row_mod and padding
    #stuff is necessary to ensure that the byte count for each
    #row is divisible by 4.  This is part of the specification.
    the_bytes = ''
    max_val = max(buf)
    width = d['width']
    colordepth = d['colordepth']
    for row in range(d['height']-1,-1,-1):# (BMPs are L to R from the bottom L row)
        row_buf = []
        for column in range(d['width']):
            b = 0
            g = 0
            r = int(255*buf[column + row*width]/max_val)
            row_buf += [b,g,r]

        the_bytes += struct.pack('<' + ''.join(['BBB']*width), *row_buf)
        row_mod = (width*colordepth/8) % 4
        if row_mod == 0:
            padding = 0
        else:
            padding = (4 - row_mod)
        padbytes = ''
        for i in range(padding):
            x = struct.pack('<B',0)
            padbytes = padbytes + x
        the_bytes = the_bytes + padbytes
        
    #call the bmp_write function with the
    #dictionary of header values and the
    #bytes created above.
    bmp_write(d,the_bytes)

if __name__ == '__main__':
    main()
