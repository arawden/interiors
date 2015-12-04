# Encoding: UTF-8
# Released under MIT

SCRIPT_NAME = "boom".freeze
SCRIPT_AUTHOR = "arawde@mail.com".freeze
SCRIPT_VERSION = "1a".freeze
SCRIPT_LICENSE = "GPL3".freeze
DESCRIPTION = "Interact with boom from IRC".freeze

COMMAND_NAME = "boom"
COMMAND_DESCRIPTION = "Interact with boom"


def weechat_init
  Weechat.register(SCRIPT_NAME, SCRIPT_AUTHOR, SCRIPT_VERSION, SCRIPT_LICENSE, DESCRIPTION, "", "")
  Weechat.hook_command(COMMAND_NAME, COMMAND_DESCRIPTION, "", "", "", "boom_command", "")

  Weechat::WEECHAT_RC_OK
end


def boom_command(data,buffer,args)
   if args.empty?
     boom_data = `boom all`
     Weechat.print('', boom_data)
   elsif !args.include? " "
     boom_data = `boom echo #{args}`
     if boom_data.include? "not found"
       Weechat.print('', "Not found")
     else
       Weechat.command(Weechat.current_buffer,boom_data)
     end
   else
      Weechat.print('',"We can't enable full functionality of boom :(")
   end
end
