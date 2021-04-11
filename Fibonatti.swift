#!/usr/bin/swift

//practice0101
//2020/Oct/8

import Foundation

// 最大公約数を返す関数
func gcd(_ a:Int, _ b:Int) -> Int {
    let (more, less) = (max(a,b), min(a,b))
    if more % less == 0 { return less}
    else { return gcd( less, more%less) }
}

// 分子分母を約分して、返す関数
func yakubun(_ x: Int, _ y: Int ) ->(Int, Int) {
    let yakusu = gcd( x, y )
    return (x / yakusu, y / yakusu)
}

// 単位分数に直して表示する関数
func greedy(_ bunshi: Int, _ bumbo: Int ) {
    let (x, y) = yakubun( bunshi, bumbo )
    let yx = Int( ceil( Double(y) / Double(x) ) )
    print( "1/\(yx)", terminator: "" )
    if x == 1 { print() }
    else { 
        // 再帰呼び出しをして、+以降を表示する
        print( " + ", terminator: "" )
   
        return greedy(1,y-yx)
    } 
}

// 整数を入力してもらう関数
func readInt(_ prompt: String ) -> Int {
    print( prompt, terminator: "" )
    return Int( readLine()! )!
}

// 分子分母をもらって、単位分数の和として表示する
while true {
    let bunshi = readInt( "分子を入力：" )
    if bunshi == 0 { break }
    let bumbo = readInt( "分母を入力：" )
    greedy( bunshi, bumbo )
}