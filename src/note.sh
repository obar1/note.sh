#!/usr/bin/env bash
# set -x
echo "*** note.sh ***"

opt1="$1"
if [ "" == "$opt1" ]; then
  opt1="--help"
fi

source .note.init

case "${opt1}" in
--id) # [id_note] # open/create a new id_note.md"
  id="${2}"
  $EDITOR "$NOTE_DIR/${id}.md"
  ;;
--today) # [] # create a new note today"
  $EDITOR "$NOTE_DIR/$(date +'%Y-%m-%d').md"
  ;;
--grep) # [pattern]  # find pattern in notes"
  grep -i -r --color "$2" "$NOTE_DIR"
  ;;
--stats) # [] # some stats on the NOTE_DIR
  ls -1 $NOTE_DIR
  echo $(ls -1 $NOTE_DIR | wc -l) notes so far ...
  ;;
*) # help
    cat $0 | grep '^--'
  ;;
esac
