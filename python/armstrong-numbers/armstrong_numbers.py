def is_armstrong(number):
    num_digit = len(str(number))
    digits = [int(x) for x in str(number)]
    return number == sum([x**num_digit for x in digits])
