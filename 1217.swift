func  sumpair(_ n: Int = 6,_ zerovalue: Int = 0 ) -> Int { 
		return ( n <= 0 ) ? zerovalue :  ( n <= 1 ) ? 1 : (n-1) * n + sumpair( n-2, zerovalue )
	}

sumpair()