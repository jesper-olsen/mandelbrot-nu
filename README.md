
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
```

```
    > help mandelbrot
    Calculate the mandelbrot set - output escape times

    The area covered can be specified through flags ll (lower left) and ur (upper right).
    Escape times can be converted to an image, e.g. with gnuplot

    Usage:
      > main {flags}

    Flags:
      --width <int> (default: 1000)
      --height <int> (default: 750)
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
    > timeit {mandelbrot --width 1000 --height 750 | to text | save -f image.txt}
    5min 35sec 491ms 37µs 625ns

    > gnuplot topng.gp
    > ^open mandelbrot.png
```
![PNG](https://raw.githubusercontent.com/jesper-olsen/mandelbrot-nu/main/mandelbrot.png)

