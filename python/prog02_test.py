"""
   CSCI 344 Project 2 Unit Tests
   Author: Scott C Johnson
"""
from prog02 import *

print_success = True

    
def test_sigma(x, y, expected):
    """
    Tests the sigma function
    """
    
    res = sigma(x, y)
    if res == expected:
        if print_success:
            print("Test sigma %d %d passed" % (x, y))
        return 1
    else:
        print("Test sigma %d %d failed. Expected %d but got %d" % (x, y, expected, res))
        return 0
        
def test_exp(x, y, expected):
    """
    Tests the exp function
    """
    
    res = exp(x, y)
    if res == expected:
        if print_success:
            print("Test exp %d %d passed" % (x, y))
        return 1
    else:
        print("Test exp %d %d failed. Expected %d but got %d" % (x, y, expected, res))
        return 0
            
def test_log(x, y, expected):
    """
    Tests the log function
    """
    
    res = log(x, y)
    if res == expected:
        if print_success:
            print("Test log %d %d passed" % (x, y))
        return 1
    else:
        print("Test log %d %d failed. Expected %d but got %d" % (x, y, expected, res))
        return 0
            
def test_choose(x, y, expected):
    """
    Tests the choose function
    """
    
    res = choose(x, y)
    if res == expected:
        if print_success:
            print("Test choose %d %d passed" % (x, y))
        return 1
    else:
        print("Test choose %d %d failed. Expected %d but got %d" % (x, y, expected, res))
        return 0
            
def test_fib(x, expected):
    """
    Tests the fib function
    """
    
    res = fib(x)
    if res == expected:
        if print_success:
            print("Test fib %d passed" % (x))
        return 1
    else:
        print("Test fib %d failed. Expected %d but got %d" % (x, expected, res))
        return 0
            
def test_prime(x, expected):
    """
    Tests the prime function
    """
    
    res = prime(x)
    if res == expected:
        if print_success:
            print("Test prime %d passed" % (x))
        return 1
    else:
        print("Test prime %d failed. Expected %d but got %d" % (x, expected, res))
        return 0
            
def test_nthprime(x, expected):
    """
    Tests the nthprime function
    """
    
    res = nthprime(x)
    if res == expected:
        if print_success:
            print("Test nthprime %d passed" % (x))
        return 1
    else:
        print("Test nthprime %d failed. Expected %d but got %d" % (x, expected, res))
        return 0
            
def test_sumprimes(x, expected):
    """
    Tests the sumprimes function
    """
    
    res = sumprimes(x)
    if res == expected:
        if print_success:
            print("Test sumprimes %d passed" % (x))
        return 1
    else:
        print("Test sumprimes %d failed. Expected %d but got %d" % (x, expected, res))
        return 0
            
def test_relprime(x, y, expected):
    """
    Tests the relprime function
    """
    
    res = relprime(x, y)
    if res == expected:
        if print_success:
            print("Test relprimes %d %d passed" % (x, y))
        return 1
    else:
        print("Test relprimes %d %d failed. Expected %d but got %d" % (x, y, expected, res))
        return 0
            
def test_binary(x, expected):
    """
    Tests the binary function
    """
    
    res = binary(x)
    if res == expected:
        if print_success:
            print("Test binary %d passed" % (x))
        return 1
    else:
        print("Test binary %d failed. Expected %d but got %d" % (x, expected, res))
        return 0
            
def main():
    number_tests = 111
    number_passed = 0
    
    '''
    Tests for sigma
    '''
    number_passed += test_sigma(0, 0, 0)
    number_passed += test_sigma(0, 5, 15)
    number_passed += test_sigma(0, 10, 55)
    number_passed += test_sigma(5, 5, 5)
    number_passed += test_sigma(5, 10, 45)
    number_passed += test_sigma(5, 15, 110)
    number_passed += test_sigma(-5, 0, -15)
    number_passed += test_sigma(-10, 0, -55)
    number_passed += test_sigma(-5, -5, -5)
    number_passed += test_sigma(-10, -5, -45)
    number_passed += test_sigma(-15, -5, -110)

    '''
    Tests for exp
    '''
    number_passed += test_exp(0, 1, 0)
    number_passed += test_exp(0, 5, 0)
    number_passed += test_exp(0, 10, 0)
    number_passed += test_exp(2, 0, 1)
    number_passed += test_exp(2, 5, 32)
    number_passed += test_exp(2, 10, 1024)
    number_passed += test_exp(2, 15, 32768)
    number_passed += test_exp(5, 0, 1)
    number_passed += test_exp(5, 5, 3125)
    number_passed += test_exp(5, 10, 9765625)
    number_passed += test_exp(5, 15, 30517578125)

    '''
    Tests for log
    '''
    number_passed += test_log(2, 1, 0)
    number_passed += test_log(2, 2, 1)
    number_passed += test_log(2, 3, 1)
    number_passed += test_log(2, 4, 2)
    number_passed += test_log(2, 127, 6)
    number_passed += test_log(3, 1, 0)
    number_passed += test_log(3, 6560, 7)
    number_passed += test_log(3, 59049, 10)
    number_passed += test_log(4, 59050, 7)
    number_passed += test_log(5, 59050, 6)
    number_passed += test_log(9, 59050, 5)

    '''
    Tests for choose
    '''
    number_passed += test_choose(0, 0, 1)
    number_passed += test_choose(2, 0, 1)
    number_passed += test_choose(10, 0, 1)
    number_passed += test_choose(10, 5, 252)
    number_passed += test_choose(20, 0, 1)
    number_passed += test_choose(20, 4, 4845)
    number_passed += test_choose(20, 10, 184756)
    number_passed += test_choose(20, 11, 167960)
    number_passed += test_choose(20, 16, 4845)
    number_passed += test_choose(20, 20, 1)
    number_passed += test_choose(10, 8, 45)

    '''
    Tests for fib
    '''
    number_passed += test_fib(0, 0)
    number_passed += test_fib(1, 1)
    number_passed += test_fib(2, 1)
    number_passed += test_fib(3, 2)
    number_passed += test_fib(4, 3)
    number_passed += test_fib(5, 5)
    number_passed += test_fib(10, 55)
    number_passed += test_fib(15, 610)
    number_passed += test_fib(20, 6765)
    number_passed += test_fib(25, 75025)

    '''
    Test for prime
    '''
    number_passed += test_prime(2 ,1)
    number_passed += test_prime(3, 1)
    number_passed += test_prime(4, 0)
    number_passed += test_prime(5, 1)
    number_passed += test_prime(6, 0)
    number_passed += test_prime(1008, 0)
    number_passed += test_prime(1009, 1)
    number_passed += test_prime(1010, 0)
    number_passed += test_prime(1012, 0)
    number_passed += test_prime(1013, 1)
    number_passed += test_prime(14, 0)
    number_passed += test_prime(15, 0)

    '''
    Tests for nthprime
    '''
    number_passed += test_nthprime(1, 2)
    number_passed += test_nthprime(2, 3)
    number_passed += test_nthprime(3, 5)
    number_passed += test_nthprime(4, 7)
    number_passed += test_nthprime(5, 11)
    number_passed += test_nthprime(6, 13)
    number_passed += test_nthprime(7, 17)
    number_passed += test_nthprime(8, 19)
    number_passed += test_nthprime(50, 229)
    number_passed += test_nthprime(75, 379)

    '''
    Tests for sumprimes
    '''
    number_passed += test_sumprimes(1, 2)
    number_passed += test_sumprimes(2, 5)
    number_passed += test_sumprimes(3, 10)
    number_passed += test_sumprimes(4, 17)
    number_passed += test_sumprimes(5, 28)
    number_passed += test_sumprimes(7, 58)
    number_passed += test_sumprimes(9, 100)
    number_passed += test_sumprimes(10, 129)
    number_passed += test_sumprimes(20, 639)
    number_passed += test_sumprimes(30, 1593)
    number_passed += test_sumprimes(40, 3087)

    '''
    Tests for relprime
    '''
    number_passed += test_relprime(2, 2, 0)
    number_passed += test_relprime(2, 3, 1)
    number_passed += test_relprime(2, 4, 0)
    number_passed += test_relprime(2, 5, 1)
    number_passed += test_relprime(2, 6, 0)
    number_passed += test_relprime(3, 2, 1)
    number_passed += test_relprime(3, 3, 0)
    number_passed += test_relprime(3, 9, 0)
    number_passed += test_relprime(18, 712, 0)
    number_passed += test_relprime(813, 286, 1)
    number_passed += test_relprime(255, 695, 0)
    number_passed += test_relprime(708, 102, 0)

    '''
    Tests for binary
    '''
    number_passed += test_binary(0, 0)
    number_passed += test_binary(1, 1)
    number_passed += test_binary(2, 10)
    number_passed += test_binary(3, 11)
    number_passed += test_binary(4, 100)
    number_passed += test_binary(5, 101)
    number_passed += test_binary(11, 1011)
    number_passed += test_binary(13, 1101)
    number_passed += test_binary(14, 1110)
    number_passed += test_binary(15, 1111)
    number_passed += test_binary(-5, -101)
    number_passed += test_binary(-12, -1100)

    print("%d of %d tests passed." % (number_passed, number_tests))
    if number_passed == number_tests:
        print('Congrats! You passed all the tests!')
    
    
main()