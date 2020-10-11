class Luhn:
    def __init__(self, card_num):

        self.card_num = card_num.replace(" ", "")

    def valid(self):
        if len(self.card_num) < 2 or not self.card_num.isdigit():
            return False

        s = 0
        for idx, digit in enumerate(reversed(self.card_num)):
            dgt = int(digit)
            if idx % 2 == 0:
                s += dgt
            elif int(digit) > 9 / 2:
                s += 2 * dgt - 9
            else:
                s += 2 * dgt

        return s % 10 == 0
