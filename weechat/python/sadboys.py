scr_name = 'sadboys'
scr_author = 'arawde@gmail.com'
scr_version = '.1'
scr_license = 'GPL3'
scr_desc = 's a d b o y s'

scr_cmd = 'sadboys'
scr_cmd_desc = 'how s a d are you'

import_ok = True

try:
	import weechat as w
except:
	print "Run through weechat tard"
	import_ok = False

def sadboys(data,buffer,args):
	s = list(args)
	sad = ' '.join(s)
	w.command('', sad)
	return w.WEECHAT_RC_OK

if __name__ == "__main__" and import_ok:
	w.register(scr_name,scr_author, scr_version, scr_license, scr_desc,"","")
	w.hook_command(scr_cmd, scr_cmd_desc,"","","","sadboys","")
