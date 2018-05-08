from pathlib import Path
import subprocess

# Put your path to the ink compiler
inklecate = './inklecate_mac/inklecate'

p = Path('.')
template = (p / 'cattemplate.html').read_text()

story_prefix = 'var storyContent ='
index = ''

for inkpath in p.glob('./*.ink'):
	name = inkpath.stem
	version = name.split('catdecisions')[1] # Yes, I hard code.
	print('Building', name)
	inkfile = inkpath.name
	inkpathtgt = p / 'cats' / inkfile
	inkpathtgt.write_bytes(inkpath.read_bytes())
	

	storyfile = name + '.js'
	subprocess.run([inklecate, '-o', storyfile, inkfile ])
	storypathsrc = p / storyfile
	storypathtgt = p / 'cats' / storyfile
	story = storypathsrc.read_bytes()
	storypathsrc.unlink()
	story = story.decode('utf-8-sig')
	storypathtgt.write_text(story_prefix + story)
	notes = ''
	htmlfile = name + '.html'
	#stuff = {'name': name, 'version': version, 'inkfile': inkfile,  'storyfile':storyfile}
	index += '<li><a href=%s>%s</a></li>\n' % ('cats/'+htmlfile, name)
	(p / 'cats' / htmlfile).write_text(template % locals())
	

indextext = """<html><head><title>A Series of Ink Examples</title></head>
<body><h1>A Series of Ink Examples</h1><ol>
%s
</ol>
</body>
</html>""" % index
print('Building index')
(p /  'index.html').write_text(indextext)
print('Done!')