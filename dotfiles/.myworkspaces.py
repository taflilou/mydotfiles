#! /usr/bin/env python3

CURRENT_PROJECTS = {
    "afrodiaspo": "/home/atessilimi/Desktop/myblog/afrodiplomacy.github.io",
    "ansible": "/home/atessilimi/Desktop/myblog/afrodiplomacy.github.io"
}

def workon (proj=None):
    if proj is None:
        for i in CURRENT_PROJECTS.keys():
            print("%s: \t %s" % (i,CURRENT_PROJECTS[i]))
    else:
        print("%s: \t %s" % (proj,CURRENT_PROJECTS[proj]))

if __name__=="__main__":
    workon()
# workon("ansible")