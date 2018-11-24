import numpy as np
def is_armstrong(number):
    num_digit = len(str(number))
    digits = [int(x) for x in str(number)]
    sum = np.sum([x**num_digit for x in digits])
    ans = False
    if number==sum:
        ans = True
    return ans
