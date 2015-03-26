
# Released under MIT

SCRIPT_NAME = "mpc".freeze
SCRIPT_AUTHOR = "arawde@mail.com".freeze
SCRIPT_VERSION = "1a".freeze
SCRIPT_LICENSE = "GPL3".freeze
DESCRIPTION = "What are you listening to fgt?".freeze

COMMAND_NAME = "music"
COMMAND_DESCRIPTION = "How shit is your taste, the script"


def weechat_init
    Weechat.register(SCRIPT_NAME, SCRIPT_AUTHOR, SCRIPT_VERSION, SCRIPT_LICENSE, DESCRIPTION, "", "")
    Weechat.hook_command(COMMAND_NAME, COMMAND_DESCRIPTION, "", "", "", "music_command", "")

    Weechat::WEECHAT_RC_OK
end


def music_command(data,buffer,args)
    mpc_data = `mpc current -f "[[%artist% - ]%title%][[ on %album%]"`.strip
    if mpc_data.empty?
        Weechat.print('', "Nothing playing you faggot")
    else
        case args.downcase
        when 'pause'
            `mpc pause`
            Weechat.print('', "Music: Paused")
        when 'play'
            `mpc play`
            Weechat.print('', "Music: Playing")
        when 'next'
            `mpc next`
            Weechat.print('', "Music: Next song")
        when 'prev'
            `mpc prev`
            Weechat.print('', "Music: Previous song")
        when 'shades'
            Weechat.command(Weechat.current_buffer, "/me is listening to: #{mpc_data} ヾ(⌐■_■)ノ")
        when 'flower'
            Weechat.command(Weechat.current_buffer, "/me is listening to: #{mpc_data} (✿◠‿◠)")
        when 'sad'
            Weechat.command(Weechat.current_buffer, "/me is listening to: #{mpc_data} (◡︿◡✿)")
        else
            Weechat.command(Weechat.current_buffer, "/me is listening to: #{mpc_data}")
        end
    end
end
