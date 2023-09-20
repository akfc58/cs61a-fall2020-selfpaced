def is_prime(n):
    '''
    >>> is_prime(2)
    False
    >>> is_prime(321)
    True
    '''
    k = 2
    while n % k == 0 and k < n:
        return False
        k = k + 1
    return True