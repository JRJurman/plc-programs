(* Name: Jesse Jurman (jrj2703) 
 Time spent on assignment: *);
(* Tests Function *);
fun test function number result expect =
  if result = expect
  then print("test " ^ number ^ "for " ^ function ^ " passed\n")
  else print("test " ^ number ^ "for " ^ function ^ " failed\n")
;

(* Exercise 3 *);
fun sigma m n = 
  if n > m
  then sigma(m+1)(n) + m
  else m
;

(* tests for sigma *);
test("sigma")("1")(sigma(0)(3))(6);
test("sigma")("2")(sigma(3)(4))(7);
test("sigma")("3")(sigma(3)(5))(12);

(* Exercise 4a *);
fun exp m n = 
  if n > 0
  then (m * exp(m)(n-1))
  else 1
;

(* tests for exp *);
test("exp")("1")(exp(0)(3))(0);
test("exp")("2")(exp(1)(2))(1);
test("exp")("3")(exp(2)(3))(8);

(* Exercise 4a
 helper log function *);
def logHelper(m, n, l):
    if (exp(m, l+1)<= n):
        return logHelper(m, n, l+1)
    else:
        return l

def log(m, n):
    return logHelper(m, n, 0)

(* tests for log *);
test("log")("1")(log(3)(1))(0);
test("log")("2")(log(2)(5))(2);
test("log")("3")(log(3)(3))(1);

(*
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

(* tests for choose *);
test("choose")("1")(choose(3)(3))(1);
test("choose")("2")(choose(4)(1))(4);
test("choose")("3")(choose(1)(4))(0);

(* Exercise 6 *);
def fib(m):
    if((m==0) or (m==1)):
        return m
    else:
        if(m>1):
            return fib(m-1)+fib(m-2)
        else:
            return 0

(* tests for fib *);
test("fib")("1")(fib(0))(0);
test("fib")("2")(fib(1))(1);
test("fib")("3")(fib(4))(3);

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

(* tests for prime *);
test("prime")("1")(prime(11))(1);
test("prime")("2")(prime(4))(0);
test("prime")("3")(prime(9))(0);

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

(* tests for nthprime *);
test("nthprime")("1")(nthprime(0))(1);
test("nthprime")("2")(nthprime(1))(2);
test("nthprime")("3")(nthprime(2))(3);

(* Exercise 7c *);
def sumprimes(n):
    if (n>0):
        return nthprime(n)+sumprimes(n-1)
    else:
        return 0

(* tests for sumprime *);
test("sumprime")("1")(sumprime(3))(10);
test("sumprime")("2")(sumprime(5))(28);
test("sumprime")("3")(sumprime(0))(0);

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

(* tests for relprime *);
test("relprime")("1")(relprime(0)(0))(0);
test("relprime")("2")(relprime(5)(2))(1);
test("relprime")("3")(relprime(2)(5))(1);

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

(* tests for binary *);
test("binary")("1")(binary(0))(0);
test("binary")("2")(binary(8))(1000);
test("binary")("3")(binary(17))(10001);
*);
