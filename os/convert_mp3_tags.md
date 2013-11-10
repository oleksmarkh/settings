### converts mp3 tags from a legacy encoding (e.g. `CP1251` - cyrillic) and store it in ID3v2 format

1. install the `python-mutagen` package
2. go to a desired dir and run:
```bash
find -iname '*.mp3' -print0 | xargs -0 mid3iconv -eCP1251 --remove-v1
```
