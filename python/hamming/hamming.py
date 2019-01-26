def distance(strand_a, strand_b):

    if len(strand_a) != len(strand_b):
        raise ValueError("Both strands should be of equal length.")

    count = sum((x[0] != x[1] for x in list(zip(strand_a, strand_b))))

    return count
