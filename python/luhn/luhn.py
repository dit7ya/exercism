class Luhn:
    def __init__(self, card_num):

        self.card_num = card_num.replace(" ", "")

    def valid(self):
        if len(self.card_num) < 2 or not self.card_num.isdigit():
            return False

        s = 0
        for digit in list(reversed(self.card_num))[1::2]:
            s += 2* int(digit) - 9 if int(digit) > 9 / 2 else 2*int(digit)
        for digit in list(reversed(self.card_num))[::2]:
            s+= int(digit)

        return s%10 == 0


print(Luhn("234 567 891 234").valid())
