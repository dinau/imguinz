import os,pegs

var alltext = ""
#-------------
const dirTbl = ["axes","config","help","plots","subplots","tools"]
for dir in dirTbl:
  for path in walkDirRec("../imPlotDemo/src/" & dir):
    let pathSp = splitFile(path)
    #echo pathSp
    if  pathSp.ext == ".zig":
      alltext &= readfile(path)

writefile("demo.zig",alltext)

for line in lines("demo.zig"):
  if line =~  peg"'const' \s+ 'ip' \s+ '=' \s+ '@import' ":
    continue
  elif line =~ peg"'const'\s+  'std' \s+ '=' \s+ '@import' ":
    continue
  elif line =~ peg"'const'\s+  'ig' \s+ '=' \s+ '@import' ":
    continue
  elif line =~ peg"'const'\s+  'utils' \s+ '=' \s+ '@import' ":
    continue
  elif line =~ peg"'const'\s+  'math' \s+ '=' \s+ '@import' ":
    continue
  else:
    echo line
