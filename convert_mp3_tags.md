### converts mp3 tags from legacy encoding (e.g. CP1251 - cyrillic) and store it in ID3v2 format ###

install python-mutagen:

<code>sudo apt-get install python-mutagen</code>

then run:

<code>find -iname '*.mp3' -print0 | xargs -0 mid3iconv -eCP1251 --remove-v1</code>
