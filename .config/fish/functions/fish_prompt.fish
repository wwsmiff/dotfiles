function fish_prompt
	set prev_status $status
	set -l git_branch (git branch 2>/dev/null | sed -n '/\* /s///p')
	set_color cyan
	echo -n (whoami)
	set_color normal
	echo -n "@"
	set_color fa3eb5
	echo -n (hostname)
	set_color normal
	echo -n " "
	set_color $fish_color_cwd
	echo -n (prompt_pwd)
	
	if test -d .git
    	set_color yellow
    	echo -n ' ('
    	echo -n "$git_branch"
    	echo -n ')'
	end

	if test $prev_status -ne 0
		set_color red
		echo -n ' ['
		echo -n $prev_status
		echo -n ']'
	end

	set_color normal
	echo -n ' λ '
end

