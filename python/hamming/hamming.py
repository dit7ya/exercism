def distance(strand_a, strand_b):
    counter = 0
    if len(strand_a) != len(strand_b):
        raise ValueError('Both strands should be of equal length.')
    for i in range(len(strand_a)):
        if strand_a[i] != strand_b[i]:
            counter += 1

    return counter
