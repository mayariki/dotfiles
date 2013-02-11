typeset -U path
path=(/usr/local/bin(N-/)
      /usr/bin(N-/)
      /bin(N-/)
      /usr/local/sbin(N-/)
      /usr/sbin(N-/)
      /sbin(N-/)
      /usr/X11/bin(N-/)
      $HOME/.rvm/gems/*/bin(N-/)
      $HOME/bin(N-/)
      )

typeset -xT SUDO_PATH sudo_path
typeset -U sudo_path
sudo_path=({,/usr/pkg,/usr/local/sbin,/usr/sbin}/sbin(N-/))

export PAGER="lv"
export LV="-c -l"

export EDITOR='emacs -nw'

