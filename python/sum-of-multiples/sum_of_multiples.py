import numpy as np


def sum_of_multiples(limit, multiples):
    muls = []
    for num in multiples:
        for i in range(limit):
            if i % num == 0:
                muls.append(i)
    return np.sum(np.unique(muls))
