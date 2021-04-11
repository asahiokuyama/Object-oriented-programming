#!/usr/bin/swift

for i in 1...20349 {
    if 20349%i == 0 {
        print(i)
        
    }
}

for i in 100...200 {
    
    if i%2 != 0||i==2 {
        
        if i%3 != 0||i==3 {
            
            if i%5 != 0||i==5 {
                
                if i%7 != 0||i==7 {
                    
                    if i%11 != 0 || i==11 {
                        
                        if i%13 != 0 || i==13 {
                            print(i)
                            
                        }
                        
                        
                    }
                    
                    
                }
                
            }
            
        }
        
    }
    
}

var sum = 0
for i in 1...1000000000000 {
    sum = 0
    for j in 1...i {
        if i%j == 0 {
            sum += j
        } 
    }
    if j == sum {
            print(j)
            
     }
}

for a in 200...400 {
    for b in 200...400 {
        for c in 200...400 {
            if (a*a)+(b*b) == c*c {
                
                if (a*b)/2 != 0 {
                    print((a*b)/2)
                    
                }
                    
            } 
        }
    }
}

