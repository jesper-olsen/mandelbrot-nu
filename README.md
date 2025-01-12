
mandelbrot-nu
==============

Mandelbrot in Nushell. Other languages: 

* [Rust](https://github.com/jesper-olsen/mandelbrot-rs) 
* [Erlang](https://github.com/jesper-olsen/mandelbrot_erl) 
* [Python](https://github.com/jesper-olsen/mandelbrot-py) 
* [Mojo](https://github.com/jesper-olsen/mandelbrot-mojo) 
* [Fortran](https://github.com/jesper-olsen/mandelbrot-f) 



Run
---
```
> use mandelbrot.nu 
> use mandelbrot to-ascii
```

```
> help mandelbrot
Calculate the mandelbrot set - output escape times

The area covered can be specified through flags ll (lower left) and ur (upper right).
Escape times can be converted to an image, e.g. with gnuplot

Usage:
  > main {flags}

Flags:
  --width <int> (default: 100)
  --height <int> (default: 75)
  --ll <list<float>> (default: [-1.2, 0.2])
  --ur <list<float>> (default: [-1, 0.35])
  -h, --help: Display the help message for this command

Input/output types:
  ╭───┬─────────┬─────────────────╮
  │ # │  input  │     output      │
  ├───┼─────────┼─────────────────┤
  │ 0 │ nothing │ list<list<int>> │
  ╰───┴─────────┴─────────────────╯
```

```
> mandelbrot --width 10 --height 5 | to text
237, 233, 156, 0, 0, 0, 0, 0, 0, 0, 0
239, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0
242, 233, 201, 0, 135, 234, 235, 154, 208, 207, 0
226, 235, 191, 235, 215, 242, 241, 241, 235, 233, 196
237, 228, 241, 242, 244, 245, 245, 244, 241, 220, 240
246, 246, 246, 247, 247, 247, 246, 245, 227, 243, 245
```

```
> mandelbrot --width 100 --height 75  | to-ascii
╭────┬───────────────────────────────────────────────────────────────────────────────────────────────────────╮
│  0 │                                                                                                       │
│  1 │                                                                                 .                     │
│  2 │                                                                                                       │
│  3 │                                                                                                       │
│  4 │                                                                               ..                      │
│  5 │                                                                                                       │
│  6 │                                                                                .                      │
│  7 │                                                                                . .                    │
│  8 │                        .                                                        .                     │
│  9 │                                                                                .                      │
│ 10 │                                                                               .  .      .             │
│ 11 │                                                                                      . .....          │
│ 12 │                                                                                  .        .           │
│ 13 │                                                                                    .      .. . .      │
│ 14 │                                                                                               ..      │
│ 15 │  .                                                                                                    │
│ 16 │   .                                                                                            .      │
│ 17 │                          _                                                                            │
│ 18 │                                                                                              . .      │
│ 19 │   _                      .                                                                     _M.    │
│ 20 │                           .                                                                    .M.    │
│ 21 │        .               .. .                                                                   ._. ..  │
│ 22 │    .. ..             . ..                                                                 .  .    ... │
│ 23 │      .MM.             .                  . .                                                      ._. │
│ 24 │      ..M.. .                          .                                                   .        .. │
│ 25 │       ..   .  .     ...                 .                                                             │
│ 26 │     ...     . .     ..                 .                                                              │
│ 27 │     .   .    ...    .                                                                                 │
│ 28 │     .        ..... .                    ..                                                          . │
│ 29 │              .   ...   .    .                                                                    .._. │
│ 30 │                    ..                   .                                                  .    _a... │
│ 31 │                    ....     .            .                                              ._  a    ..__ │
│ 32 │                    .....  ...         ....                                                ..a.   .._M │
│ 33 │                    .... .  .. .       ..._     .                .               ..    ..  a__......_M │
│ 34 │                    .._...  _...        .                                         .  ._..._._....aa.WM │
│ 35 │                     ..._......        .. .   .                ..                  .    ....__._.M_WMM │
│ 36 │                     ..2M.__a.   .      _....                                      .    .  .._a_MMMMMM │
│ 37 │                ..  ...MM2___..  .     ..._ ...                                         .  M.2MMMMMMMM │
│ 38 │                 ......MMMMM._a  ... .  ._.                    .        .                  ._MMMMMMMMM │
│ 39 │                 ._aa_aMMMMMM..a.._. ...__.                     . . .                     .__aMMMMMMMM │
│ 40 │              ..a_...2MMMMMMM..a._a..._..W._     .                 ...  ..  .             .2._MMMMMMMM │
│ 41 │             .  a   ..MMMMMMM...M_M_W_.M_M..    .                  .a_.._  _          _  ..M_MMMMMMMMM │
│ 42 │                    ._MMMMMMaMMMMMMaM.MMM_.2    .                   ._..M.             __..a_MMMMMMMMM │
│ 43 │                  ...__MMMMMMMMMMMMMMMaMMMM.  ...                    .._a_.__   .          _.MMMMMMMMM │
│ 44 │                    ...._MMMMMMMMMMMMMMMMM.a ...                   .._____.22   .          ._MMMMMMMMM │
│ 45 │     .        .   _..._WMMMMMMMMMMMMMMMMMa.......               _ _.a.._a...     ..       ..._MMMMMMMM │
│ 46 │        ..      .._..MMMMMMMMMMMMMMMMMMMMMMa....2.       .         ....aM_._.    .a_..     ..aMMMMMMMM │
│ 47 │         . _    ...__aMMMMMMMMMMMMMMMMMMMMM__.__         .           .aMMMaMM. M.M2Ma. W.  ._.aMMMMMMM │
│ 48 │          _.     ..MMMMMMMMMMMMMMMMMMMMMMMMMMM_                    .._2aMMMWW.  .__W_..aM......_MMMMMM │
│ 49 │           ..   ..._2MMMMMMMMMMMMMMMMMMMMMMMMa..          .  .    .Wa_WMMMMM2.a..MMMM.._M.2M.a.._MMMMM │
│ 50 │          ...  _..W2MMMMMMMMMMMMMMMMMMMMMMMMM_.W.         ._._ .   .M_MMMMMMM.MM.MMMM.MMMaaMaM2MMMMMMM │
│ 51 │       . ._.....W..2MMMMMMMMMMMMMMMMMMMMMMMMMM...         .._aW2_  ..2MMMMMMM..MWMMMMMMMMMMMMMMMMMMMMM │
│ 52 │     . .a. ._..a_MaMMMMMMMMMMMMMMMMMMMMMMMMMMMW.          ._MW_.......2MMMMM_aMMMMMMMMMMMMMMMMMMMMMMMM │
│ 53 │     . ..   ..aaMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM_...   .    .a.MMM..2M.a.MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 54 │     ...     ._aMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM_M.     2. ...2MMM_.MM_2MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 55 │  .   .     ..._aMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM..     .2_M.._MMM_MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 56 │            . ...._MMMMMMMMMMMMMMMMMMMMMMMMMMM_W.     __MM.2.MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 57 │       .   .   ...aMMMMMMMMMMMMMMMMMMMMMMMMMMMM_. ..aM.MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 58 │                ..MMMMMMMMMMMMMMMMMMMMMMMMMMMM2..a..M_M_MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 59 │             . ....MMMMMMMMMMMMMMMMMMMMMMMMMMM....M_MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 60 │            ..._.._aMMMMMMMMMMMMMMMMMMMMMMMMM_..MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 61 │              __._WMMMMMMMMMMMMMMMMMMMMMMMMMWM.MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 62 │             ..._2MMaMMMMMMMMMMMMMMMMMMMMMMM_._MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 63 │            _._ ._.._MMMMMMMMMMMMMMMMMMMMMMM_MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 64 │             ._   ..._MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 65 │         .. .     2_.aMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 66 │         ...     . .Ma_WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 67 │                  a_..2MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 68 │                  .  ...._M2MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 69 │                _.    .2._._a_MM___MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 70 │                     .  ....M...MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 71 │                         ...._.aMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 72 │                         ..2._MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 73 │                        M_MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 74 │                    _2...M_2MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 75 │             _   M   _a..MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
╰────┴───────────────────────────────────────────────────────────────────────────────────────────────────────╯
```


```
> timeit {mandelbrot --width 1000 --height 750 | to text | save -f image.txt}
5min 35sec 491ms 37µs 625ns

> gnuplot topng.gp
> ^open mandelbrot.png
```
![PNG](https://raw.githubusercontent.com/jesper-olsen/mandelbrot-nu/main/mandelbrot.png)

```
> version | select version build_target
╭──────────────┬──────────────────────╮
│ version      │ 0.101.1              │
│ build_target │ aarch64-apple-darwin │
╰──────────────┴──────────────────────╯
```
