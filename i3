#### i3 config file ####

## Variables ##

# Workspace names
set $ws1 1: web
set $ws2 2: work
set $ws3 3: wat
set $ws4 4: files
set $ws5 5: music
set $ws6 6: kek
set $ws7 7: kik
set $ws8 8: kok

# Colors
set $bg     #111111
set $text_i #222222
set $text_f #333333
set $text_u #444444

## Important ##

# Set mod key (Mod1=<Alt>, Mod4=<Super>)
set $mod Mod4

# kill focused window
bindsym $mod+Shift+q kill

# Use Mouse+$mod to drag floating windows
floating_modifier $mod

# start program launchers
#bindsym $mod+d exec --no-startup-id dmenu_recency
bindsym $mod+d exec rofi -show run -config ~/.config/rofi/config
#bindsym $mod+z exec --no-startup-id morc_menu

# Screen brightness controls
# bindsym XF86MonBrightnessUp exec "xbacklight -inc 10; notify-send 'brightness up'"
# bindsym XF86MonBrightnessDown exec "xbacklight -dec 10; notify-send 'brightness down'"

## Start Applications

# Terminal
bindsym $mod+Return exec terminal
# Firefox
bindsym $mod+Mod2+KP_1 exec firefox
# Blablabla
bindsym $mod+Ctrl+b exec terminal -e 'bmenu'
#bindsym $mod+F2 exec firefox
bindsym $mod+Mod2+KP_2 exec pcmanfm
# bindsym $mod+F3 exec ranger
bindsym $mod+Shift+F3 exec gksu pcmanfm
bindsym $mod+F5 exec terminal -e 'mocp'
bindsym $mod+t exec --no-startup-id pkill compton
bindsym $mod+Ctrl+t exec --no-startup-id compton -b
bindsym $mod+Shift+d --release exec "killall dunst; exec notify-send 'restart dunst'"
bindsym Print exec --no-startup-id i3-scrot
bindsym $mod+Print --release exec --no-startup-id i3-scrot -w
bindsym $mod+Shift+Print --release exec --no-startup-id i3-scrot -s
bindsym $mod+Shift+h exec xdg-open /usr/share/doc/manjaro/i3_help.pdf
bindsym $mod+Ctrl+x --release exec --no-startup-id xkill

## Open applications on specific workspaces ##
assign [class="Firefox"] $ws1
assign [class="Pcmanfm"] $ws4
assign [class="sublime_text"] $ws2




# MUSIC

bindsym Control+space exec mpc toggle
bindsym Control+Left exec mpc prev
bindsym Control+Right exec mpc next
#bindsym Control+Down exec mpc down
#bindsym Control+Up exec mpc up




#focus_follows_mouse no

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# workspace back and forth (with/without active container)
workspace_auto_back_and_forth yes
bindsym $mod+b workspace back_and_forth
bindsym $mod+Shift+b move container to workspace back_and_forth; workspace back_and_forth

# split orientation
bindsym $mod+h split h;exec notify-send 'tile horizontally'
bindsym $mod+v split v;exec notify-send 'tile vertically'
bindsym $mod+q split toggle

# toggle fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# toggle sticky
bindsym $mod+Shift+s sticky toggle

# focus the parent container
bindsym $mod+a focus parent

# move the currently focused window to the scratchpad
bindsym $mod+Shift+minus move scratchpad

# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command cycles through them.
bindsym $mod+minus scratchpad show

#navigate workspaces next / previous
bindsym $mod+Ctrl+Right workspace next
bindsym $mod+Ctrl+Left workspace prev

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8

# Go to lowest empty workspace
bindsym mod1+space exec ~/bin/nextworkspace

# Move focused container to workspace
bindsym $mod+Ctrl+1 move container to workspace $ws1
bindsym $mod+Ctrl+2 move container to workspace $ws2
bindsym $mod+Ctrl+3 move container to workspace $ws3
bindsym $mod+Ctrl+4 move container to workspace $ws4
bindsym $mod+Ctrl+5 move container to workspace $ws5
bindsym $mod+Ctrl+6 move container to workspace $ws6
bindsym $mod+Ctrl+7 move container to workspace $ws7
bindsym $mod+Ctrl+8 move container to workspace $ws8

# Move to workspace with focused container
bindsym $mod+Shift+1 move container to workspace $ws1; workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2; workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3; workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4; workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5; workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6; workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7; workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8; workspace $ws8


# Open specific applications in floating mode
for_window [title="alsamixer"] floating enable border pixel 1
for_window [class="Calamares"] floating enable border normal
for_window [class="Clipgrab"] floating enable
for_window [title="File Transfer*"] floating enable
for_window [class="Galculator"] floating enable border pixel 1
for_window [class="GParted"] floating enable border normal
for_window [title="i3_help"] floating enable sticky enable border normal
for_window [class="Lightdm-gtk-greeter-settings"] floating enable
for_window [class="Lxappearance"] floating enable sticky enable border normal
for_window [class="Manjaro-hello"] floating enable
for_window [class="Manjaro Settings Manager"] floating enable border normal
for_window [title="MuseScore: Play Panel"] floating enable
for_window [class="Nitrogen"] floating enable sticky enable border normal
for_window [class="Oblogout"] fullscreen enable
for_window [class="octopi"] floating enable
for_window [title="About Pale Moon"] floating enable
for_window [class="Pamac-manager"] floating enable
for_window [class="Pavucontrol"] floating enable
for_window [class="qt5ct"] floating enable sticky enable border normal
for_window [class="Qtconfig-qt4"] floating enable sticky enable border normal
for_window [class="Simple-scan"] floating enable border normal
for_window [class="(?i)System-config-printer.py"] floating enable border normal
for_window [class="Skype"] floating enable border normal
for_window [class="Thus"] floating enable border normal
for_window [class="Timeset-gui"] floating enable border normal
for_window [class="(?i)virtualbox"] floating enable border normal
for_window [class="Xfburn"] floating enable

# switch to workspace with urgent window automatically
for_window [urgent=latest] focus

# reload the configuration file
bindsym $mod+Shift+c reload

# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart

# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# Set shut down, restart and locking features
bindsym $mod+0 mode "$mode_system"
set $mode_system (l)ock, (e)xit, switch_(u)ser, (s)uspend, (h)ibernate, (r)eboot, (Shift+s)hutdown
mode "$mode_system" {
    bindsym l exec --no-startup-id i3exit lock, mode "default"
    bindsym s exec --no-startup-id i3exit suspend, mode "default"
    bindsym u exec --no-startup-id i3exit switch_user, mode "default"
    bindsym e exec --no-startup-id i3exit logout, mode "default"
    bindsym h exec --no-startup-id i3exit hibernate, mode "default"
    bindsym r exec --no-startup-id i3exit reboot, mode "default"
    bindsym Shift+s exec --no-startup-id i3exit shutdown, mode "default"

    # exit system mode: "Enter" or "Escape"
    bindsym Return mode "default"
    bindsym Escape mode "default"
}

# Resize window (you can also use the mouse for that)
bindsym $mod+r mode "resize"
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode
        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 5 px or 5 ppt
        bindsym k resize grow height 5 px or 5 ppt
        bindsym l resize shrink height 5 px or 5 ppt
        bindsym semicolon resize grow width 5 px or 5 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # exit resize mode: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

# Lock screen
bindsym $mod+9 exec --no-startup-id blurlock

# Autostart applications
exec --no-startup-id /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
exec --no-startup-id nitrogen --restore; sleep 1; compton -b
exec --no-startup-id nm-applet
exec --no-startup-id xfce4-power-manager
exec --no-startup-id pamac-tray
exec_always --no-startup-id fix_xcursor
exec_always --no-startup-id $HOME/.config/polybar/launch.sh



#exec --no-startup-id clipit
#exec --no-startup-id start_conky_maia
#exec --no-startup-id xautolock -time 10 -locker blurlock
#exec_always --no-startup-id ff-theme-util
#--------------------------------------
#exec --no-startup-id blueman-applet
#exec_always --no-startup-id sbxkb
#exec --no-startup-id start_conky_green
#exec --no-startup-id manjaro-hello

# Color palette used for the terminal ( ~/.Xresources file )
# Colors are gathered based on the documentation:
# https://i3wm.org/docs/userguide.html#xresources
# Change the variable name at the place you want to match the color
# of your terminal like this:
# [example]
# If you want your bar to have the same background color as your 
# terminal background change the line 362 from:
# background #14191D
# to:
# background $term_background
# Same logic applied to everything else.

set_from_resource $term_background background
set_from_resource $term_foreground foreground
set_from_resource $term_color0     color0
set_from_resource $term_color1     color1
set_from_resource $term_color2     color2
set_from_resource $term_color3     color3
set_from_resource $term_color4     color4
set_from_resource $term_color5     color5
set_from_resource $term_color6     color6
set_from_resource $term_color7     color7
set_from_resource $term_color8     color8
set_from_resource $term_color9     color9
set_from_resource $term_color10    color10
set_from_resource $term_color11    color11
set_from_resource $term_color12    color12
set_from_resource $term_color13    color13
set_from_resource $term_color14    color14
set_from_resource $term_color15    color15

## i3bar ##
#bar {
#	i3bar_command i3bar -t
#	status_command i3status
#	position top
#
#	bindsym button4 nop
#	bindsym button5 nop
#	font xft:Noto Sans 10
#	strip_workspace_numbers yes
#
#    colors {
#        background #1b181f
#        statusline #FFFFFF
#        separator  #1b181f
##                          border    backgr.   text
#        focused_workspace  #1b181f #1b181f #FFFFFF
#        active_workspace   #1b181f #1b181f #FDF6E3
#        inactive_workspace #1b181f #1b181f #AAAAAA
#        binding_mode       #1b181f #1b181f #F9FAF9
#        urgent_workspace   #1b181f #1b181f #EEAAFF
#    }
#}

# hide/unhide i3status bar
bindsym $mod+m bar mode toggle

## - ##


## STYLE ##

# Configure border style <normal|1pixel|pixel xx|none|pixel>
new_window pixel 0
new_float normal

# Hide borders
hide_edge_borders none

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font xft:Noto Sans 10

# Theme colors
# class                   border  backgr. text    indic.   child_border
  client.focused          #1b181f #1b181f #80FFF9 #FDF6E3
  client.focused_inactive #1b181f #1b181f #1ABC9C #454948
  client.unfocused        #1b181f #1b181f #1ABC9C #454948
  client.urgent           #1b181f #1b181f #1ABC9C #268BD2
  client.placeholder      #1b181f #1b181f #ffffff #000000 

  client.background       #1b181f

## i3-gaps: ##

# Set inner/outer gaps
gaps inner 20
#gaps outer -4

# Additionally, you can issue commands with the following syntax. This is useful to bind keys to changing the gap size.
# gaps inner|outer current|all set|plus|minus <px>
# gaps inner all set 10
# gaps outer all plus 5

# Smart gaps (gaps used if only more than one container on the workspace)
#smart_gaps on

# Smart borders (draw borders around container only if it is not the only container on this workspace) 
# on|no_gaps (on=always activate and no_gaps=only activate if the gap size to the edge of the screen is 0)
smart_borders no_gaps

## - ##

## Sound-section - NO EDIT for Alsa upgrade ##

exec --no-startup-id volumeicon
bindsym $mod+Ctrl+m exec terminal -e 'alsamixer'
#exec --no-startup-id pulseaudio
#exec --no-startup-id pa-applet
#bindsym $mod+Ctrl+m exec pavucontrol

## - ##
