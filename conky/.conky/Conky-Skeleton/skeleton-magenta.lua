--[[
#=====================================================================================
# CONKY SKELETON
#
# Date    : 12/11/2018
# Author  : TheGreatYellow67
# Version : 1.2 Magenta
# License : Distributed under the terms of GNU GPL version 2 or later
#=====================================================================================
# CONKY VERSION >= 1.10
#
# For commands in conky.config section:
# http://conky.sourceforge.net/config_settings.html
#
# For commands in conky.text section:
# http://conky.sourceforge.net/variables.html
#
# A PDF "Configuration Settings.pdf" with all variables is provided in .docs folder
#=====================================================================================
# FONTS FOR THIS CONKY
# To avoid copyright infringements you will have to download
# and install the fonts yourself sometimes.
#
# This conky script uses Roboto font
#=====================================================================================
# GENERAL INFO ABOUT FONTS
# Go and look for a nice font on sites like http://www.dafont.com/
# Download and unzip - double click the font to install it (font-manager must be installed)
# No font-manager then put fonts in ~/.fonts
# Change the font name in the conky
# The name can be known with a command in the terminal: fc-list | grep "part of name"
# Change width and height of the conky according to font
# Reboot your system or fc-cache -fv in terminal
# Enjoy
#=====================================================================================
#
# Readme
#
# These conky scripts are based on Harmattan conky and Informant Conky.
# These scripts are tested in debian stretch 9.6 (Conky version 1.10)
#
# How to use
#
# Edit one of the conkyrc.lua file that you can find in each color variant, then
# replace the variables template6, template7, template8 and template9.
#
# Open Weather Map API key
#
# to get an API Key, first you have to sign up here https://openweathermap.org/appid
#
# City ID
#
# You can find an up-to-date city id list here:
# http://bulk.openweathermap.org/sample/city.list.json.gz
#
# there is also a city.list.json in the .docs Conky-Harlequin folder
#
# after you have replaced those variables with your own, save.
#
# Credits
#
# 1. zagortenay333 for Harmattan Conky:
#    https://github.com/zagortenay333/Harmattan
#
# 2. aresgon for Workspace Indicator Conky
#
# 3. Addy for Informant conky:
#    https://plus.google.com/+AdhiPambudi
#    http://addy-dclxvi.deviantart.com/
#    https://github.com/addy-dclxvi
#======================================================================================
]]

conky.config = {

	-- [ Window Settings ]

	own_window = true,						-- Create your own window to draw.
	own_window_type = 'desktop',			-- If own_window = true options are: normal/override/dock/desktop/panel.
	own_window_transparent = true,			-- if own_window_argb_visual is true sets background opacity 0%.
	own_window_hints = 'undecorated,below,skip_taskbar,skip_pager,sticky',
											-- if own_window true - just hints
											-- own_window_type sets it
	own_window_colour = '#333333',			-- Set colour if own_window_transparent is false.
	own_window_class = 'Conky',				-- Manually set the WM_CLASS name for use with xprop.
	own_window_title = 'Conky Skeleton',
	minimum_width = 320,					-- Minimum width of window.
	maximum_width = 400,					-- Maximum width of window.
	alignment = 'top_right',				-- top_left,top_middle,top_right,bottom_left,bottom_middle,bottom_right,
											-- middle_left,middle_middle,middle_right,none.
	gap_x = 20,								-- Pixels between right or left border.
	gap_y = 50,								-- Pixels between bottom or left border.

	-- ( with own_window_transparent = false )
	--own_window_argb_visual = true,		-- Use ARGB - composite manager required.
	--own_window_colour = '#000000',		-- Set colour if own_window_transparent is false.
	--own_window_argb_value = 255,			-- Real transparency - composite manager required 0-255.

	-- [ Font Settings ]

	use_xft = true,							-- Use Xft (anti-aliased font and stuff).
	font = 'Roboto:size=10',				-- Font for complete conky unless in code defined.
	xftalpha = 1,							-- Alpha of Xft font. Must be a value at or between 1 and 0.
	override_utf8_locale = true,			-- Force UTF8? requires XFT.
	uppercase = false,						-- Uppercase or not.
	top_name_width = 20,					-- Width for $top name value default 15.

	-- [ Colour Settings ]

	draw_shades = false,					-- Draw shades.
	default_shade_color = 'black',			-- Default color for shades.
	draw_outline = false,					-- Draw outline.
	default_outline_color = 'black',		-- Default outline colour.

	-- [ Borders Settings ]

	draw_borders = false,					-- Draw borders around text.
	stippled_borders = 0,					-- Dashing the border.
	border_inner_margin = 5,				-- Border inner margins.
	border_outer_margin = 0,				-- Border outer margins.
	border_width = 0,						-- Border width.
	draw_graph_borders = false,				-- Graphics borders.

	-- [ Miscellaneous Settings ]

	update_interval = 1,					-- Update interval.
	background = true,						-- If true, Conky will be forked to background when started.
	use_spacer = 'none',					-- Adds spaces around certain objects to align - default none.
	no_buffers = true,						-- Subtract (file system) buffers from used memory?
	short_units = true,						-- change GiB to G and MiB to M.
	pad_percents = 2,						-- Like it says, ot pads the decimals on % values. doesn't seem to work since v1.7.1.
	imlib_cache_size = 0,					-- Imlib2 image cache size, in bytes. Default 4MiB Increase this value if you use
											-- $image lots. Set to 0 to disable the image cache.
	double_buffer = true,					-- Use the Xdbe extension? (eliminates flicker).
											-- It is highly recommended to use own window with this one
											-- so double buffer won't be so big.
	--text_buffer_size = 2048,				-- Size of buffer for display of content of large variables (default=256).
											-- Default and Minimum size is 256 - needs more for single commands that
											-- "call" a lot of text IE: bash scripts.
	-- max_user_text 16384					-- Maximum size of user text buffer, i.e. layout below TEXT line in config file
											-- (default is 16384 bytes).
	-- temperature_unit Fahrenheit			-- Desired output unit of all objects displaying a temperature. Parameters are
											-- either "fahrenheit" or "celsius". The default unit is degree Celsius.

	-- [ Colours ]

	default_color = '#CA71DF',
	color0 = '#FFFFFF',
	color1 = '#777777',
	color2 = '#D8BFD8',
	color3 = '#9ACD32',
	color4 = '#FFA07A',
	color5 = '#FFDEAD',
	color6 = '#00BFFF',
	color7 = '#5F9EA0',
	color8 = '#BDB76B',
	color9 = '#CD5C5C',

    -- [ Graphs Color Variants ]
    template2="CA71DF CA71DF",

    -- [ Skeleton Root Path ]
    template3="~/.conky/Conky-Skeleton",

    -- [ Cache Path ]

    template4="~/.cache/skeleton-conky",

    -- [ API Key ]
 
    template6="d112ad6b1c8c51c1aa5a410cfce8565b",

    -- [ City ID ]
    
	template7="5278073",
	
    -- [ Temp Unit ]

	-- Values: default, metric, imperial.
    template8="imperial",

    -- [ Locale ]

	-- e.g. "es_ES.UTF-8". Leave empty for default.
    template9="",

};

conky.text = [[
# [ WEATHER DATA ]
#
${execi 300 ${template3}/get_weather ${template6} ${template7} ${template8} ${template9}}\
#
# [ IMAGES ]
#
${image ${template3}/pic/temperature.png -p 0,10 -s 32x32}\
${image ${template3}/pic/frame-01.png -p 1,384 -s 131x55}\
${image ${template3}/pic/frame-02.png -p 1,545 -s 171x26}\
${image ${template3}/pic/frame-02.png -p 1,583 -s 171x26}\
${image ${template3}/pic/frame-03.png -p 1,627 -s 221x25}\
${image ${template3}/pic/frame-03.png -p 1,663 -s 221x25}\
#
# [ MAIN TEMPERATURE ]
#
${voffset 2}${goto 32}${font Roboto:size=25}${color0}${execi 300 jq -r .main.temp ${template4}/weather.json | awk '{print int($1+0.5)}' # round num}${if_match "$template8" == "metric"} °C${else}${if_match "$template8" == "imperial"} °F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}${font}${color}
#
# [ ACTUAL WEATHER CONDITION ICON ]
#
${execi 300 cp -f ${template3}/.icons/#fff__64/$(jq .weather[0].id ${template4}/weather.json).png ${template4}/weather-0.png}${image ${template4}/weather-0.png -p 115,5 -s 40x40}\
#
# [ TIME AND DATE ]
#
${voffset -44}${alignr}${font Roboto:Light:size=30}${time %H}${color0}:${time %M}:${time %S}${font}${color}
${voffset 4}${alignr}${font Roboto:Light:size=18}${color0}${execi 300 LANG=${template9} LC_TIME=${template9} date +"%A"}, \
${execi 300 LANG=${template9} LC_TIME=${template9} date +"%B"}${color} \
${font Roboto:size=18}${execi 300 LANG=${template9} LC_TIME=${template9} date +"%d"}${font}${color}
#
# [ CITY ]
#
${voffset 2}${alignr}${font Roboto:size=18}${color0}${execi 300 jq -r .name ${template4}/weather.json | sed "s|\<.|\U&|g"}${font}${color}
#
# [ WEATHER DESCRIPTION ]
#
${voffset -2}${alignr}${font Roboto:size=12}${color0}(${execi 300 jq -r .weather[0].description ${template4}/weather.json | sed "s|\<.|\U&|g"})${font}${color}
#
# [ MAIN PRESSURE, HUMIDITY, WIND SPEED, MIN AND MAX TEMPERATURES ]
#
${voffset 4}${alignr}${font Roboto:pixelsize=11}Pressure: ${color0}${execi 300 jq -r .main.pressure ${template4}/weather.json | awk '{print int($1+0.5)}' # round num} hPa${color}
${voffset -15}${alignr 110}Humidity: ${color0}${execi 300 jq -r .main.humidity ${template4}/weather.json | awk '{print int($1+0.5)}' # round num} %${color}
${voffset -15}${alignr 200}Wind: ${color0}${execi 300 jq -r .wind.speed ${template4}/weather.json | awk '{print int($1+0.5)}' # round num}${if_match "$template8" == "metric"} m/s${else}${if_match "$template8" == "default"} m/s${else}${if_match "$template8" == "imperial"} mi/h${endif}${endif}${endif}${color}
${voffset 2}${alignr}Max. temp.: ${color0}${execi 300 jq -r .main.temp_max ${template4}/weather.json | awk '{print int($1+0.5)}' # round num}${if_match "$template8" == "metric"} °C${else}${if_match "$template8" == "imperial"} °F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}${color}
${voffset -15}${alignr 105}Min. temp.: ${color0}${execi 300 jq -r .main.temp_min ${template4}/weather.json | awk '{print int($1+0.5)}' # round num}${if_match "$template8" == "metric"} °C${else}${if_match "$template8" == "imperial"} °F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}${font}${color}
#
# [ 5 DAYS FORECAST NAMES ]
#
${voffset 6}${alignc 120}${execi 300 LANG=${template9} LC_TIME=${template9} date -d +1day +%^a}
${voffset -18}${alignc 63}${execi 300 LANG=${template9} LC_TIME=${template9} date -d +2day +%^a}
${voffset -18}${alignc}${execi 300 LANG=${template9} LC_TIME=${template9} date -d +3day +%^a}
${voffset -18}${alignc -63}${execi 300 LANG=${template9} LC_TIME=${template9} date -d +4day +%^a}
${voffset -18}${alignc -120}${execi 300 LANG=${template9} LC_TIME=${template9} date -d +5day +%^a}
#
# [ 5 DAYS FORECAST ICONS ]
#
${execi 300 cp -f ${template3}/.icons/#fff__32/$(${template3}/parse_weather 'first' '.weather[0].id' '1').png ${template4}/weather-1.png}${image ${template4}/weather-1.png -p 25,200 -s 32x32}\
${execi 300 cp -f ${template3}/.icons/#fff__32/$(${template3}/parse_weather 'first' '.weather[0].id' '2').png ${template4}/weather-2.png}${image ${template4}/weather-2.png -p 83,200 -s 32x32}\
${execi 300 cp -f ${template3}/.icons/#fff__32/$(${template3}/parse_weather 'first' '.weather[0].id' '3').png ${template4}/weather-3.png}${image ${template4}/weather-3.png -p 145,200 -s 32x32}
${execi 300 cp -f ${template3}/.icons/#fff__32/$(${template3}/parse_weather 'first' '.weather[0].id' '4').png ${template4}/weather-4.png}${image ${template4}/weather-4.png -p 205,200 -s 32x32}
${execi 300 cp -f ${template3}/.icons/#fff__32/$(${template3}/parse_weather 'first' '.weather[0].id' '5').png ${template4}/weather-5.png}${image ${template4}/weather-5.png -p 265,200 -s 32x32}
#
# [ 5 DAYS FORECAST TEMPERATURES MIN/MAX ]
#
# 3rd day's temperatures (center position)
#
${voffset -4}${font Roboto:size=8}${alignc}${execi 300 ${template3}/parse_weather 'avg' '.main.temp_min' '3'}${if_match "$template8" == "metric"}°C${else}${if_match "$template8" == "imperial"}°F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}/${execi 300 ${template3}/parse_weather 'avg' '.main.temp_max' '3'}${if_match "$template8" == "metric"}°C${else}${if_match "$template8" == "imperial"}°F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}
#
# 2nd day's temperatures (left position)
#
${voffset -15}${alignc 60}${execi 300 ${template3}/parse_weather 'avg' '.main.temp_min' '2'}${if_match "$template8" == "metric"}°C${else}${if_match "$template8" == "imperial"}°F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}/${execi 300 ${template3}/parse_weather 'avg' '.main.temp_max' '2'}${if_match "$template8" == "metric"}°C${else}${if_match "$template8" == "imperial"}°F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}
#
# 1st day's temperatures (left position)
#
${voffset -15}${alignc 120}${font Roboto:size=8}${execi 300 ${template3}/parse_weather 'avg' '.main.temp_min' '1'}${if_match "$template8" == "metric"}°C${else}${if_match "$template8" == "imperial"}°F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}/${execi 300 ${template3}/parse_weather 'avg' '.main.temp_max' '1'}${if_match "$template8" == "metric"}°C${else}${if_match "$template8" == "imperial"}°F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}
#
# 4th day's temperatures (right position)
#
${voffset -15}${alignc -63}${execi 300 ${template3}/parse_weather 'avg' '.main.temp_min' '4'}${if_match "$template8" == "metric"}°C${else}${if_match "$template8" == "imperial"}°F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}/${execi 300 ${template3}/parse_weather 'avg' '.main.temp_max' '4'}${if_match "$template8" == "metric"}°C${else}${if_match "$template8" == "imperial"}°F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}
#
# 5th day's temperatures (right position)
#
${voffset -15}${alignc -120}${execi 300 ${template3}/parse_weather 'avg' '.main.temp_min' '5'}${if_match "$template8" == "metric"}°C${else}${if_match "$template8" == "imperial"}°F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}/${execi 300 ${template3}/parse_weather 'avg' '.main.temp_max' '5'}${if_match "$template8" == "metric"}°C${else}${if_match "$template8" == "imperial"}°F${else}${if_match "$template8" == "default"} K${endif}${endif}${endif}
#
# [ SEPARATOR ]
#
${voffset 2}${color1}${hr}${color}
#
# [ SYSTEM INFOS ]
#
${font Roboto:pixelsize=11}${alignr}User: ${color0}${execi 5000 whoami}${color} ${color1}|${color} Hostname: ${color0}$nodename${color}
${alignr}Distribution: ${color0}${execi 6000 lsb_release -a | grep Description | cut -c 14-29}${color} ${color1}|${color} Version: ${color0}${execi 6000 lsb_release -a | grep Description | cut -c 31-43}${color}
${alignr}Architecture: ${color0}${machine}${color} ${color1}|${color} Kernel: ${color0}${kernel}${color}
${alignr}Uptime: ${color0}$uptime${color} ${color1}|${color} Processes: ${color0}$processes ($running_processes running)${color}
${alignr}Packages: ${color0}${execi 360 aptitude search "~U" | wc -l | tail} update(s)${color} ${color1}|${color} Sys temp: ${color9}${hwmon temp 1}°C${color}
#
# [ SEPARATOR ]
#
${voffset -2}${color1}${hr}${color}
#
# [ CPU ]
#
${alignr}CPU Freq: ${color0}${freq_g cpu0} GHz ${color1}|${color} CPU usage: ${color0}${cpu cpu0}%${color}
${alignr}Core1: ${color0}${cpu cpu1}%${color}
${voffset -14}${alignr 72}${cpubar cpu1 5,110}
${alignr}Core2: ${color0}${cpu cpu2}%${color}
${voffset -14}${alignr 72}${cpubar cpu2 5,110}
${alignr}Core3: ${color0}${cpu cpu3}%${color}
${voffset -14}${alignr 72}${cpubar cpu3 5,110}
${alignr}Core4: ${color0}${cpu cpu4}%${color}
${voffset -14}${alignr 72}${cpubar cpu4 5,110}
${alignr}Core0 temp: ${color9}${execi 10 sensors | grep 'Core 0' | cut -c18-24} ${color1}|${color} Core1 temp: ${color9}${execi 10 sensors | grep 'Core 1' | cut -c18-24}${color}
${voffset -81}${alignr 190}${voffset 2}${cpugraph 54,130 ${template2}}
#
# [ SEPARATOR ]
#
${voffset 8}${color1}${hr}${color}
#
# [ GPU Nvidia ]
#
${alignr}GPU Temp: ${color9}${nvidia temp}°C ${color1}|${color} Fan Speed: ${color9}${execi 5 nvidia-settings -q [fan:0]/GPUCurrentFanSpeed -t}% ${color1}|${color} GPU Clock: ${color0}${nvidia gpufreq} MHz${color}
${alignr}Mem Clock: ${color0}${nvidia memfreq} MHz ${color1}|${color} Mem Used: ${color0}${execi 5 nvidia-settings -q [gpu:0]/UsedDedicatedGPUMemory -t}${color} / ${color0}${exec nvidia-settings -q [gpu:0]/TotalDedicatedGPUMemory -t} MiB${color}
#
# [ SEPARATOR ]
#
${voffset -2}${color1}${hr}${color}
#
# [ MEM AND SWAP ]
#
${alignr}Mem: ${color0}$memperc% ($mem${color} / ${color0}$memmax) ${color1}|${color} Swap: ${color0}$swapperc% ($swap${color} / ${color0}$swapmax)
#
# [ SEPARATOR ]
#
${voffset -2}${color1}${hr}${color}
#
# [ DISKS ]
#
${alignr}Root: ${color0}${fs_used_perc /}% (${fs_used /}${color} / ${color0}${fs_size /})${color}
${alignr}${color9}R: ${color0}${diskio_read /dev/sda2} ${color1}|${color} ${color3}W: ${color0}${diskio_write /dev/sda2}${color}
${voffset -32}${alignr 150}${diskiograph /dev/sda2 25,170 ${template2}}
${alignr}Home: ${color0}${fs_used_perc /home}% (${fs_used /home}${color} / ${color0}${fs_size /home})${color}
${alignr}${color9}R: ${color0}${diskio_read /dev/sda3} ${color1}|${color} ${color3}W: ${color0}${diskio_write /dev/sda3}${color}
${voffset -32}${alignr 150}${diskiograph /dev/sda3 25,170 ${template2}}
#
# [ SEPARATOR ]
#
${voffset -10}${color1}${hr}${color}
#
# [ CONNECTIONS ]
#
${alignr}Up: ${color0}${upspeed wlp5s0}${color}
${alignr}Sent: ${color0}${totalup wlp5s0}${color}
${voffset -31}${alignr 100}${upspeedgraph wlp5s0 24,220 ${template2}}
${alignr}Down: ${color0}${downspeed wlp5s0}${color}
${alignr}Received: ${color0}${totaldown wlp5s0}${color}
${voffset -33}${alignr 100}${downspeedgraph wlp5s0 24,220 ${template2}}
${alignr}Connections in: ${color0}${tcp_portmon 1 32767 count} ${color1}|${color} Connections out: ${color0}${tcp_portmon 32768 61000 count} ${color1}|${color} Total: ${color0}${tcp_portmon 1 65535 count}${color}
#
# [ SEPARATOR ]
#
${voffset -2}${color1}${hr}${color}
#
# [ NETWORK STATUS - WIRED OR WIRELESS ]
#
${if_existing /proc/net/route eno1}\
${alignr}Wired LAN device: ${color0}eno1${color}
${alignr}Local IP: ${color0}${addr wlp5s0} ${color1}|${color} Public IP: ${color0}${execi 60 wget -O - -q icanhazip.com}${color}
${else}\
${if_existing /proc/net/route wlp5s0}\
${alignr}WiFi Quality: ${color0}${wireless_link_qual_perc wlp5s0}% ${color1}|${color} Interface: ${color0}${gw_iface} ${color1}|${color} Bitrate: ${color0}${wireless_bitrate wlp5s0}${color}
${alignr}WiFi Mode: ${color0}${wireless_mode wlp5s0} ${color1}|${color} Essid: ${color0}${wireless_essid wlp5s0}${color}
${alignr}Local IP: ${color0}${addr wlp5s0} ${color1}|${color} Public IP: ${color0}${execi 60 wget -O - -q icanhazip.com}${color}
${alignr}Mac addr: ${color0}${wireless_ap wlp5s0}
${else}\
${alignr}${color0}Network offline!${color}
${endif}${endif}\
#
# [ SEPARATOR ]
#
${voffset -2}${color1}${hr}${color}
#
# [ TOP 5 PROCESSES ]
#
${alignr 10}mem
${alignr 60}${voffset -15}cpu
${alignr 100}${voffset -15}pid
${alignr 278}${voffset -15}Name
${voffset 2}${goto 18}${top name 1}${color0}${goto 200}${top pid 1}${goto 239}${top cpu 1}%${goto 284}${top mem 1}%${color}
${voffset 2}${goto 18}${top name 2}${color0}${goto 200}${top pid 2}${goto 239}${top cpu 2}%${goto 284}${top mem 2}%${color}
${voffset 2}${goto 18}${top name 3}${color0}${goto 200}${top pid 3}${goto 239}${top cpu 3}%${goto 284}${top mem 3}%${color}
${voffset 2}${goto 18}${top name 4}${color0}${goto 200}${top pid 4}${goto 239}${top cpu 4}%${goto 284}${top mem 4}%${color}
${voffset 2}${goto 18}${top name 5}${color0}${goto 200}${top pid 5}${goto 239}${top cpu 5}%${goto 284}${top mem 5}%${color}
#
# [ SEPARATOR ]
#
${voffset -2}${color1}${hr}${color}
#
# [ WORKSPACE INDICATOR ]
#
${voffset -6}${alignr -30}${color}${font Droid Sans:size=25}${if_match ${desktop}==1}${color0}${endif}•${color}${offset 10}${if_match ${desktop}==2}${color0}${endif}•${color}${offset 10}${if_match ${desktop}==3}${color0}${endif}•${color}${offset 10}${if_match ${desktop}==4}${color0}${endif}•${color}
#
# [ ABOUT CONKY SKELETON ]
#
${voffset -25}${alignr}${font Roboto:style=bold:pixelsize=12}Conky Skeleton (Magenta)${color}
${alignr}${font Roboto:pixelsize=11}${color0}by TheGreatYellow67 (v.1.2 - 2018)
]]
