# bash completion for CakePHP console

_cake()
{
    local cur prev opts cake
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    cake="${COMP_WORDS[0]}"

    if [[ ${COMP_CWORD} = 1 ]] ; then
    	opts=$(${cake} BashCompletion.BashCompletion)
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi
    if [[ ${COMP_CWORD} = 2 ]] ; then
    	opts=$(${cake} BashCompletion.BashCompletion $prev)
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi

}
complete -F _cake cake cakephp