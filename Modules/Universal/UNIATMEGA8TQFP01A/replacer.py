#!/usr/bin/python
import os, sys
usage = "usage: %s search_text replace_text [infile [outfile]]" %         os.path.basename(sys.argv[0])

if len(sys.argv)<3:
       print usage

else:
        stext = sys.argv[1]
        rtext = sys.argv[2]
        input = sys.stdin
        output = sys.stdout
#        print "There are %s args " %len(sys.argv)

        if len(sys.argv) > 3:
                input = open(sys.argv[3])

        if len(sys.argv) > 4:
                output = open(sys.argv[4], 'w')

        for s in input:
                output.write(s.replace(stext, rtext))

        if len(sys.argv)> 3:
            input.close()
            if len(sys.argv) > 4:
                    output.close()
