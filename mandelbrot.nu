def complex-add [a b] {
    let real = ($a.0 + $b.0)
    let imaginary = ($a.1 + $b.1)
    [ $real $imaginary ]
}

def complex-mul [a b] {
    let real = ($a.0 * $b.0 - $a.1 * $b.1)
    let imaginary = ($a.0 * $b.1 + $a.1 * $b.0)
    [ $real $imaginary ]
}

def complex-abs [a] {
    ($a.0 * $a.0) + ($a.1 * $a.1) | math sqrt
}

def complex-abs-squared [a] {
    ($a.0 * $a.0) + ($a.1 * $a.1) 
}

export def cnt2char []: int -> string {
    let symbols = "MW2a_. "
    let ns = ($symbols | str length) 
    let idx = ($in / 255.0 * $ns ) | into int
    $symbols | str substring $idx..$idx
}

#map output mandelbrot escape times to ascii art
#
#converts list of rows of int to list of rows of string
export def to-ascii []: list<list<int>> -> list<string> {
    each {|$row| 
        $row | each {|$i| $i | cnt2char} | str join
    } | reverse 
}


export def escape-time [x: float y: float max_iter: int] : nothing -> int {
    mut z = [0.0 0.0]
    let c = [$x $y]
    mut iter = 0
    while $iter < $max_iter {
        if (complex-abs-squared $z) > 4.0 {
            break
        }
        $z = complex-add (complex-mul $z $z) $c
        $iter = $iter + 1
    }
    $max_iter - $iter
}

#Calculate the mandelbrot set - output escape times 
#
#The area covered can be specified through flags ll (lower left) and ur (upper right).
#Escape times can be converted to an image, e.g. with gnuplot
export def main [
    --width: int = 100
    --height: int = 75    
    --ll: list<float> = [-1.2 0.20]
    --ur: list<float> = [-1.0 0.35]
]: nothing -> list<list<int>> {
    if ($ll | length) != 2 or ($ur | length) != 2 {
        error make { msg: "Both --ll and --ur must be lists with exactly two float elements" }
    }

    let fwidth = $ur.0 - $ll.0
    let fheight = $ur.1 - $ll.1
    let M = 255
    $height..0  
        | each {
            |y| 0..$width 
                | each {|x| escape-time ($ll.0 + $x * $fwidth / $width) ($ur.1 - $y * $fheight / $height ) $M}
        } 
        | collect
}

