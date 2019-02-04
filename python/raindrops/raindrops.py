sounds = {3: "Pling", 5: "Plang", 7: "Plong"}


def raindrops(number):
    noise = "".join((sound for factor, sound in sounds.items() if number % factor == 0))
    return noise or str(number)
