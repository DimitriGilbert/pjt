# pjt completion                                           -*- shell-script -*-

# This bash completions script was generated by
# completely (https://github.com/dannyben/completely)
# Modifying it manually is not recommended

_pjt_completions_filter() {
  local words="$1"
  local cur=${COMP_WORDS[COMP_CWORD]}
  local result=()

  if [[ "${cur:0:1}" == "-" ]]; then
    echo "$words"
  
  else
    for word in $words; do
      [[ "${word:0:1}" != "-" ]] && result+=("$word")
    done

    echo "${result[*]}"

  fi
}

_pjt_completions() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  local compwords=("${COMP_WORDS[@]:1:$COMP_CWORD-1}")
  local compline="${compwords[*]}"

  case "$compline" in
    'create'*'--config-dir')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A directory -- "$cur" )
      ;;

    'create'*'--parent')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A directory -- "$cur" )
      ;;

    'config remove'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_pjt_completions_filter "--ypath -y --config-dir")" -- "$cur" )
      ;;

    'config show'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_pjt_completions_filter "--config-dir")" -- "$cur" )
      ;;

    'config add'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_pjt_completions_filter "--ypath -y --config-dir --array --no-array")" -- "$cur" )
      ;;

    'config'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_pjt_completions_filter "add remove show")" -- "$cur" )
      ;;

    'create'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_pjt_completions_filter "--init -i --config-dir --parent")" -- "$cur" )
      ;;

    'list'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_pjt_completions_filter "--config-dir")" -- "$cur" )
      ;;

    'scan'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_pjt_completions_filter "--config-dir --add-all --no-add-all")" -- "$cur" )
      ;;

    'add'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -A directory -W "$(_pjt_completions_filter "--config-dir --description")" -- "$cur" )
      ;;

    'run'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_pjt_completions_filter "$(/bin/list) --config-dir")" -- "$cur" )
      ;;

    *)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_pjt_completions_filter "add config create list run scan")" -- "$cur" )
      ;;

  esac
} &&
complete -F _pjt_completions pjt

# ex: filetype=sh
