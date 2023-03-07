

def num_eights(x):
    """Returns the number of times 8 appears as a digit of x.

    >>> num_eights(3)
    0
    >>> num_eights(8)
    1
    >>> num_eights(88888888)
    8
    >>> num_eights(2638)
    1
    >>> num_eights(86380)
    2
    >>> num_eights(12345)
    0
    """
    "*** YOUR CODE HERE ***"
    if x // 10 == 0:
        if x == 8:
            return 1
        else:
            return 0
    elif x % 10 == 8:
        return 1 + num_eights(x // 10) 
    else:
        return 0 + num_eights(x // 10)


def pingpong(n):
    """Return the nth element of the ping-pong sequence.

    >>> pingpong(8)
    8
    >>> pingpong(10)
    6
    >>> pingpong(15)
    1
    >>> pingpong(21)
    -1
    >>> pingpong(22)
    -2
    >>> pingpong(30)
    -2
    >>> pingpong(68)
    0
    >>> pingpong(69)
    -1
    >>> pingpong(80)
    0
    >>> pingpong(81)
    1
    >>> pingpong(82)
    0
    >>> pingpong(100)
    -6
    """
    "*** YOUR CODE HERE ***"
    total = 0
    i = 1
    diff = 1
    while i <= n:
        total = diff + total
        if num_eights(i) or (i % 8 == 0):
            diff = -diff
        else:
            pass
        i = i + 1
    return total 