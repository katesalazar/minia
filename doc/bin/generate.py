#!/usr/bin/env python3

import sys


for line in sys.stdin:
    #   Ends in an EOL.
    assert line[-1] == '\n'
    if len(line) > 1:
        assert line[-2] != '\n' and line[-2] != '\r'
    #   Remove the EOL character.
    line = line[:-1]
    print(line)
