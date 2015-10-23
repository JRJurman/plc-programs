(* Name: Jesse Jurman (jrj2703) 
 Time spent on assignment: *);

(* Tests Function *);

(* Exercise 3 *);
fun sigma m n = 
    if n > m
    then sigma(m+1, n) + m
    else m

(* Exercise 4a *);
def exp(m, n):
    if (n > 0):
        return (m * exp(m, n-1))
    else:
        return 1

(* Exercise 4a
 helper log function *);
def logHelper(m, n, l):
    if (exp(m, l+1)<= n):
        return logHelper(m, n, l+1)
    else:
        return l

def log(m, n):
    return logHelper(m, n, 0)

(* Exercise 5 *);
def choose(n, k):
    if(n >= 0):
        if((k == 0) or (k == n)):
            return 1
        else:
            if((k > 0) and (n > 0)):
                return choose(n-1, k)+choose(n-1,k-1)
            else:
                return 0
    else:
        return 0

(* Exercise 6 *);
def fib(m):
    if((m==0) or (m==1)):
        return m
    else:
        if(m>1):
            return fib(m-1)+fib(m-2)
        else:
            return 0

(* Exercise 7a 
helper prime function *);
def primeHelper(n, m):
    if (m > 1):
        if ( (n%m) == 0 ):
            return 0
        else:
            return primeHelper(n, m-1)
    else:
        return 1

def prime(n):
    return primeHelper(n, n-1)

(* Exercise 7b
helper nthprime function *);
def nthprimeHelper(n, m):
    if(prime(m)):
        if(n==0):
            return m
        else:
            return nthprimeHelper(n-1, m+1)
    else:
        return nthprimeHelper(n, m+1)

def nthprime(n):
    return nthprimeHelper(n, 1)

(* Exercise 7c *);
def sumprimes(n):
    if (n>0):
        return nthprime(n)+sumprimes(n-1)
    else:
        return 0

(* Exercise 7d
helper function for relprime? *);
def relprimeHelper(m, n, l):
    if(l>1):
        if(((n%l)==0) and ((m%l)==0)):
            return 0
        else:
            return relprimeHelper(m, n, l-1)
    else:
        return 1

def relprime(m, n):
    if(m == n):
        return 0
    else:
        if(m > n):
            return relprimeHelper(m, n, m-1)
        else:
            return relprimeHelper(m, n, n-1)

(* Exercise 8
helper for binary function
n -> value; p -> place; s -> store *);
def binaryHelper(n, p, s):
    if(n > 0):
        return binaryHelper(int(n/2), p*10, (s+(p*(n%2))))
    else:
        return s

def binary(m):
    if( m > 0):
        return binaryHelper(m, 1, 0)
    else:
        return (-binaryHelper(-m, 1, 0))
