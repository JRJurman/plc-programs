# Name: Jesse Jurman (jrj2703)
# Time spent on assignment:
#  ~30 minutes
#  35 minutes for tests

# Collaborators: N/A

import sys
sys.setrecursionlimit(10000)

# used for testFunc
import inspect
"""
testing functions
"""
def testFunc(func, result):
    if __name__ == '__main__':
        lambdaString = inspect.getsourcelines(func)[0][0].split(":")[1]
        funcString = lambdaString.split(')')[0] + ")"
        expectString = lambdaString.split(')')[1][1:]

        if (func() == int(expectString)):
            print(funcString, "passed")
        else:
            print(funcString, "failed, expected", expectString, "got", func())

# Exercise 3
def sigma(m, n):
    if (n > m):
        return sigma(m+1, n) + m
    else:
        return m

"""
tests for sigma
"""
testFunc(lambda :sigma(0,3), 6)
testFunc(lambda :sigma(3,4), 7)
testFunc(lambda :sigma(3,5), 12)


# Exercise 4a
def exp(m, n):
    if (n > 0):
        return (m * exp(m, n-1))
    else:
        return 1
"""
tests for exp
"""
testFunc(lambda :exp(0,3), 0)
testFunc(lambda :exp(1,2), 1)
testFunc(lambda :exp(2,3), 8)


# Exercise 4a
# helper log function
def logHelper(m, n, l):
    if (exp(m, l+1)<= n):
        return logHelper(m, n, l+1)
    else:
        return l

def log(m, n):
    return logHelper(m, n, 0)

"""
tests for log
"""
testFunc(lambda :log(3,1), 0)
testFunc(lambda :log(2,5), 2)
testFunc(lambda :log(3,3), 1)

# Exercise 5
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
"""
tests for choose
"""
testFunc(lambda :choose(3,3), 1)
testFunc(lambda :choose(4,1), 4)
testFunc(lambda :choose(1,4), 0)

# Exercise 6
def fib(m):
    if((m==0) or (m==1)):
        return m
    else:
        if(m>1):
            return fib(m-1)+fib(m-2)
        else:
            return 0
"""
tests for fib
"""
testFunc(lambda :fib(0), 0)
testFunc(lambda :fib(1), 1)
testFunc(lambda :fib(4), 3)
# Exercise 7a

# helper prime function
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
"""
tests for prime
"""
testFunc(lambda :prime(11), 1)
testFunc(lambda :prime(4), 0)
testFunc(lambda :prime(9), 0)

# Exercise 7b
# helper nthprime function
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
"""
tests for nthprime
"""
testFunc(lambda :nthprime(0), 1)
testFunc(lambda :nthprime(1), 2)
testFunc(lambda :nthprime(2), 3)

# Exercise 7c
def sumprimes(n):
    if (n>0):
        return nthprime(n)+sumprimes(n-1)
    else:
        return 0
"""
tests for sumprimes
"""
testFunc(lambda :sumprimes(3), 10)
testFunc(lambda :sumprimes(5), 28)
testFunc(lambda :sumprimes(0), 0)


# Exercise 7d
# helper function for relprime?
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
"""
tests for relprime
"""
testFunc(lambda :relprime(0, 0), 0)
testFunc(lambda :relprime(5, 2), 1)
testFunc(lambda :relprime(2, 5), 1)

# Exercise 8
# helper for binary function
# n -> value; p -> place; s -> store
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
"""
tests for binary
"""
testFunc(lambda :binary(0), 0)
testFunc(lambda :binary(8), 1000)
testFunc(lambda :binary(17), 10001)
