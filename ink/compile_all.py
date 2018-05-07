from pathlib import Path
import subprocess

# Put your path to the ink compiler
inklecate = './inklecate_mac/inklecate'

p = Path('.')
template = (p / 'cattemplate.html').read_text()

index = ''
for inkfile in p.glob('./*.ink'):
	name = inputink.stem
	version = name.split('catdecisions') # Yes, I hard code.
	storyfile = name + '.js'
	subprocess.run([inklecate, '-o', storyfile, inkfile ])
	notes = ''
	htmlfile = name + '.html'
	index += '<li><a href=%s>%s</a></li>\n' % (htmlfile, name)
	(p / htmlfile).write_text(template % locals)
	

indextext = """<html><head><title>A Series of Ink Examples</title></head>
<body><h1>A Series of Ink Examples</h1><ol>
%s
</ol>
</body>
</html>""" % index

(p / 'index.html').write_text(indextext)
