set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_color_prefix cyan
set __fish_git_prompt_char_dirtystate 'M'
set __fish_git_prompt_color_dirtystate red
set __fish_git_prompt_char_stagedstate 'a'
set __fish_git_prompt_color_stagedstate green
set __fish_git_prompt_char_untrackedfiles '?'
set __fish_git_prompt_color_untrackedfiles red
set __fish_git_prompt_char_stashstate 's'
set __fish_git_prompt_color_stashstate magenta
set __fish_git_prompt_char_upstream_ahead ' ▲'
set __fish_git_prompt_color_upstream blue
set __fish_git_prompt_char_upstream_behind ' ▼'
set __fish_git_prompt_color_upstream_behind yellow
set __fish_git_prompt_char_upstream_equal ' ='
set __fish_git_prompt_color_upstream_equal green
set __fish_git_prompt_char_upstream_diverged ' ⧎'
set __fish_git_prompt_color_upstream_diverged red


function fish_prompt
  set last_status $status

  set git_prompt_string (__fish_git_prompt "$green⦗%s$green⦘")
  if not test -z $git_prompt_string
  	printf '%s\n' $git_prompt_string
  end
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color blue

  printf '%s ' "$red❯$yellow❯$green❯"

  set_color normal
end

function fish_right_prompt -d "print right hand prompt"
	if test $status -eq 1
	  printf "%s" "$red!"
	end
end

#  memo: ❰❱ ❬ ❭ ❮ ❯ ❯❯❯ ⧎ ⦗ ⦘「 」 『 』
