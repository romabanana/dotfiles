#
# ~/.bashrc
#
change_prompt() {
  # Array of icon strings (no color codes here)
  local icons=(
    'λ '
    ' '
    '󱎃 '
    ' '
    ' '
    ' '
    ' '
    ' '
    '󰜃 '
    '󰄛 '
    '󰣇 '
    ' '
    '󰞇 '
    ' '
    '󰄛 '
    '󰓠 '
    ' '
    '󱇫 '
    '󰜑 '
    ' '
    '󰚩 '
    '󰴺 '
    )

  # Array of 256-color codes to pick from for icon and prompt separately
  local colors=(
    3 10 14 48 55 57 126 184 190 197 202 207
  )

  # Pick random icon and two random colors
  local icon="${icons[$RANDOM % ${#icons[@]}]}"
  local icon_color=${colors[$RANDOM % ${#colors[@]}]}
  local prompt_color=${colors[$RANDOM % ${#colors[@]}]}

  # Compose PS1 with independent colors for icon and prompt text
  PS1="\[\e[38;5;${icon_color}m\]${icon} \[\e[38;5;51m\]\w \$ \[\e[0m\]"
}

change_prompt

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias up='upower -i /org/freedesktop/UPower/devices/battery_axp288_fuel_gauge' 

alias wp='hyprctl hyprpaper reload HDMI-A-1,'
alias awp='mpvpaper "*" -o "no-audio loop"'
alias shot='grim -g "$(slurp)" - | swappy -f -'

alias gifplay='kitty +kitten icat'

