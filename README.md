
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
    > use mandelbrot.nu to_ascii
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
      ╭───┬───────┬────────╮
      │ # │ input │ output │
      ├───┼───────┼────────┤
      │ 0 │ any   │ any    │
      ╰───┴───────┴────────╯
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
> mandelbrot --width 100 --height 75 | to_ascii
╭────┬───────────────────────────────────────────────────────────────────────────────────────────────────────╮
│  0 │ ..................................................................................................... │
│  1 │ ..................................................................................................... │
│  2 │ ..................................................................................................... │
│  3 │ ..................................................................................................... │
│  4 │ ..................................................................................................... │
│  5 │ ..................................................................................................... │
│  6 │ ..............................................................................._..................... │
│  7 │ ..............................................................................._..................... │
│  8 │ ................................................................................_.................... │
│  9 │ ..............................................................................._..................... │
│ 10 │ ..................................................................................................... │
│ 11 │ ....................................................................................._.._.__......... │
│ 12 │ .........................................................................................._.......... │
│ 13 │ ..........................................................................................._..._..... │
│ 14 │ ..................................................................................................... │
│ 15 │ ._................................................................................................... │
│ 16 │ .._.................................................................................................. │
│ 17 │ .........................a........................................................................... │
│ 18 │ ............................................................................................._....... │
│ 19 │ .._......................_....................................................................._M.... │
│ 20 │ ..............................................................................................._M_... │
│ 21 │ ........................_._....................................................................__.... │
│ 22 │ ......._...............__................................................................._........._ │
│ 23 │ ....._MM_............._............................................................................__ │
│ 24 │ ......_M__._.............................................................................._........__ │
│ 25 │ ......._..._........__............................................................................... │
│ 26 │ ...._......._._........................_............................................................. │
│ 27 │ ...._........___...._................................................................................ │
│ 28 │ ...._..........___._...................._..........................................................._ │
│ 29 │ ............._....__..._........................................................................._.a. │
│ 30 │ ...................._......................................................................_...._2___ │
│ 31 │ ...................._._.................._..............................................__..a....__a_ │
│ 32 │ ....................____..._..........__._................................................_.a_....__M │
│ 33 │ ...................___.._.._.._......._.._....._................_......................_..a__..____aM │
│ 34 │ .....................__._.._.__........_........................................._...a___a_a__._aa_WM │
│ 35 │ .....................____.__._........__......................__.................._....__.._a___MaWMM │
│ 36 │ ....................__2M_a_a...._......_____..........................................._..__aaaMMMMMM │
│ 37 │ ....................__MMWaaa__........____._..........................................._..M_2MMMMMMMM │
│ 38 │ ................._..__MMMMM__2.._._.....a_...................._............................_MMMMMMMMM │
│ 39 │ .................aaa_aMMMMMM__2._a.._..aa_....................._._._......................aaaMMMMMMMM │
│ 40 │ .............__a____WMMMMMMM__2__a_._a__M__........................__..__.._............._2__MMMMMMMM │
│ 41 │ ............_..2...__MMMMMMM___M_M_Wa_MaM_.........................a___a.._..........a..__MaMMMMMMMMM │
│ 42 │ ...................__MMMMMMaMMMMMM2M_MMMa_2........................____M_.............__..aaMMMMMMMMM │
│ 43 │ .................___a_MMMMMMMMMMMMMMM2MMMM_...._.....................__2a_aa..._..........a_MMMMMMMMM │
│ 44 │ ....................___aMMMMMMMMMMMMMMMMM_2.._....................___a____W2..._.........._aMMMMMMMMM │
│ 45 │ ...._........_..._.___WMMMMMMMMMMMMMMMMMa__.___................_.__a__aa__......__........__aMMMMMMMM │
│ 46 │ ........_......_.___MMMMMMMMMMMMMMMMMMMMMM2____2_......._.........._._2Ma_a_.....a_........_aMMMMMMMM │
│ 47 │ .........._.....__aaaMMMMMMMMMMMMMMMMMMMMMaa_a_....................._aMMM2MM..M.M2Ma..W_...__aMMMMMMM │
│ 48 │ .........a_......_MMMMMMMMMMMMMMMMMMMMMMMMMMMa....................___2aMMMWW_.._a_W___2M______aMMMMMM │
│ 49 │ .........._......__2MMMMMMMMMMMMMMMMMMMMMMMM2__.........._.._.....MaaWMMMMM2_a..MMMM___M_2M_2___MMMMM │
│ 50 │ ..........__..a__W2MMMMMMMMMMMMMMMMMMMMMMMMMa_W_..........__a._....MaMMMMMMM_MM_MMMM_MMMaaM2MWMMMMMMM │
│ 51 │ ......_._____._W__2MMMMMMMMMMMMMMMMMMMMMMMMMM___.........__aaW2_..._2MMMMMMM__MWMMMMMMMMMMMMMMMMMMMMM │
│ 52 │ .......2_.____aaMaMMMMMMMMMMMMMMMMMMMMMMMMMMMW_..........__MW___.____2MMMMMaaMMMMMMMMMMMMMMMMMMMMMMMM │
│ 53 │ ...._._....._a2MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMa_._..._.....2_MMM__2M_a_MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 54 │ ....___....._aaMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM_M......W...._2MMM__MMa2MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 55 │ ._..._......___aMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM_......_2aM___MMMaMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 56 │ ............._____MMMMMMMMMMMMMMMMMMMMMMMMMMM_W_....._aMM_2_MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 57 │ .........._....._2MMMMMMMMMMMMMMMMMMMMMMMMMMMM_..._2M_MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 58 │ ................_MMMMMMMMMMMMMMMMMMMMMMMMMMMM2_.2._MaMaMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 59 │ ............_...__MMMMMMMMMMMMMMMMMMMMMMMMMMM____MaMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 60 │ ............______2MMMMMMMMMMMMMMMMMMMMMMMMM___MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 61 │ ............._a__WMMMMMMMMMMMMMMMMMMMMMMMMMWM_MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 62 │ ............____2MMaMMMMMMMMMMMMMMMMMMMMMMM___MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 63 │ ...........a._..___aMMMMMMMMMMMMMMMMMMMMMMM_MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 64 │ ............._....__aMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 65 │ ........__._.....W__2MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 66 │ ........_......._._M2_WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 67 │ .................aa..WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 68 │ .....................___aM2MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 69 │ ...............__...._2_a__aaMMaaaMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 70 │ ...................._..._._M___MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 71 │ ..........................____aMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 72 │ ........................._2_aMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 73 │ .......................MaMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 74 │ ...................a2_._M_2MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
│ 75 │ ............_...M...a2__MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM │
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
