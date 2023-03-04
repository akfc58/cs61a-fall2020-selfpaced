def merge(n1, n2):
    """ Merges two numbers
    >>> merge(31, 42)
    4321
    >>> merge(21, 0)
    21
    >>> merge (21, 31)
    3211
    """
    n1_last = n1 % 10
    n2_last = n2 % 10
    if n1== 0:
        return n2
    elif n2 == 0:
        return n1
    else:
        if n1_last >= n2_last:
            n1, n2 = n2, n1
        else:
            pass
        return n1 % 10 + merge(n1 // 10, n2) * 10