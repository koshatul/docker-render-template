#!/usr/bin/python

import jinja2
import os
import sys
	
# convert = lambda src, dst: open(dst, "w").write(jinja2.Template(open(src).read()).render(**os.environ))

sys.stdout.write(jinja2.Template(sys.stdin.read()).render(**os.environ))
