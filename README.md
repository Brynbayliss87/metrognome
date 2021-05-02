# metrognome

Metrognome is a metronome written in [Crystal](https://crystal-lang.org/)

## Usage

Metrognome requires [Sox](http://sox.sourceforge.net/) and [Crystal](https://crystal-lang.org/) to run.

To use the executable included in the repository simply run:

```metrognome --bpm=80```

or:

```metrognome -b 80```

with your desired bpm.

if the executable doesn't work on you machine you can compile:

```crystal build metrognome.cr```

or run with:

```crystal run metrognome.cr -- -b 80```

