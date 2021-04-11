func factrization(_n:Int) -> [Int] {
    var result:[Int] = []
    var value = n
    var pn = 2

    while value>1 {
        while value%pn == 0 {
            result += [pn]
            value/=pn
        }

        pn = pn+1
    }    
    return result
}

var n = 102346018113339
var x:[Int] = []
x = factrization(_n:102346018113339)
print(x)
