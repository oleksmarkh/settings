### installs Tuxguitar on Fedora and turns sounds on

http://tuxguitar.com.ar/forum/4/939/fedora-and-tuxguitar/


1. install [Tuxguitar](http://sourceforge.net/projects/tuxguitar/) itself

```bash
$ sudo dnf install tuxguitar
```

2. install [Timidity](http://timidity.sourceforge.net/), which is a midi converter

```bash
$ sudo dnf install timidity++
```

or another synthesizer of your choice

3. check if Timidity is used with [aconnect](http://linuxcommand.org/man_pages/aconnect1.html), which is a sequencer connection manager

```bash
$ aconnect -o
```

it may tell that it's not:

```
client 14: 'Midi Through' [type=kernel]
    0 'Midi Through Port-0'
```

or it's already there:

```
client 14: 'Midi Through' [type=kernel]
    0 'Midi Through Port-0'
client 129: 'TiMidity' [type=user]
    0 'TiMidity port 0 '
    1 'TiMidity port 1 '
    2 'TiMidity port 2 '
    3 'TiMidity port 3 '
```

so if not yet, enable it:

```bash
$ timidity -iA -Os &
```

4. tell Tuxguitar about it

set `TiMidity port 0` on `Tools -> Settings -> Sound -> MIDI Port`
