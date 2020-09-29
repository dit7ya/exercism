class Luhn:
    def __init__(self, card_num):

        self.card_num = card_num.replace(" ", "")

    def valid(self):
        if len(self.card_num) < 2 or not self.card_num.isdigit():
            return False

        s = 0
        for idx, digit in enumerate(reversed(self.card_num)):
            if idx % 2 == 0:
                s += int(digit)
            elif int(digit) > 9 / 2:
                s += 2 * int(digit) - 9
            else:
                s += 2 * int(digit)

        return s % 10 == 0
