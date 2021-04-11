func printABC(n : Int) {
    for _ in 1...n {
        print("ABC",terminator:" ")
    }
    
    
}
printABC(n:12)


func printCardinal(n:Int){
    for j in 1...n {
        if j < 4 {
            if j == 1 {
                print("\(j)st",terminator:" ")
            }else if j==2 {
                print("\(j)nd",terminator:" ")
            }else if j==3 {
                print("\(j)rd",terminator:" ")
            }
        }
        else {
            print("\(j)th",terminator:" ")
        }
    }
}

printCardinal(n:24);


func printCard( card: Int ) {
    
    let suit = [ "♠️", "♡", "♢", "♣️" ]
    let result = suit[card/13]
    let num = card%13
    if[0,10,11,12].contains(num){
        if num == 0{
            print( "\(result) A", terminator:""  )
        }else if num == 10 {
             print( "\(result) J", terminator:""  )
        }else if num == 11 {
             print( "\(result) Q", terminator:""  )
        }else if num == 12 {
             print( "\(result) K", terminator:""  )
        }
        
    }
    else {
        print("\(result)\(num+1)",terminator:" ")
        
    }
}
for n in 0...51 {
    printCard( card: n )
}

print()




let digits = ["一","二","三","四","五","六","七","八","九"]
let keta = [ "十", "百", "千" ]
let kansu = [ "万", "億", "兆", "京" ] // こちらは考慮しなくてもOK
func printKansushi( n: Int ) {
    var result = ""
   
    if n%10 > 0 {
        result = digits[ n%10-1 ] + result
        let a = n/1000
        let b = n-(a*1000)
        let c = b/100
        let x = b-(c*100)
        result = digits[x/10 - 1] + keta[0] + result
    } 
    if n/100 > 0{
        let a = n/1000
        let x = n-(a*1000)
        result = digits[x/100 - 1] + keta[1] + result
    }
    if n/1000 > 0{
        result = digits[n/1000-1] + keta[2] + result
    }
    if n/10000 > 0 {
        result = digits[n/10000-1] + kansu[0]+result
    }
    print( result, terminator: " " )
}

printKansushi( n: 5467 )



func factorizater(n:Int){
    var nums:[Int] = []
    var x = n
    while x/2 > 0{
       if x%2 == 0{
            nums += [2]
        }else if x%3 == 0{
        nums += [3]
        }   
        x = x/2
        print(x)
        
    }
    
    print(nums)
}

factorizater(n:12)

extension Int {
    
    /// 素数かどうか
    var isPrimeNumber: Bool { get }
    
    /// 指定した範囲の素数をすべて配列で返す
    static func primeNumbers(max: Int, min: Int = 2) -> [Int] { get }
    
    /// 素因数分解する
    func primeFactorization() -> [(prime: Int, count: Int)]? {
        // 1以下はnil
        if self <= 1 { return nil }
        
        var ret: [(prime: Int, count: Int)] = []
        var divided = self
        var count = 0
        let primes = Int.primeNumbers(max: self)
        
        for prime in primes {
            if divided % prime == 0 {
                count = 0
                repeat {
                    count += 1
                    divided = divided / prime
                } while divided % prime == 0
                
                ret.append((prime: prime, count: count))
            }
            if divided == 1 {
                break
            }
        }
        return ret
    }
}