sounds = {
    105: "PlingPlangPlong",
    15: "PlingPlang",
    35: "PlangPlong",
    21: "PlingPlong",
    3: "Pling",
    5: "Plang",
    7: "Plong",
}


def raindrops(number):

    for k, v in sounds .items():
        if number % k == 0:
            return v
    return str(number)
