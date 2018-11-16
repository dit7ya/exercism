class Allergies(object):
    items_dict = {
        "eggs": 1,
        "peanuts": 2,
        "shellfish": 4,
        "strawberries": 8,
        "tomatoes": 16,
        "chocolate": 32,
        "pollen": 64,
        "cats": 128,
    }

    def __init__(self, score):
        self.score = score % 256
        self._allergen_list = [
            key for key in self.items_dict.keys() if self.is_allergic_to(key)
        ]

    def is_allergic_to(self, item):
        return self.score & self.items_dict[item] != 0

    @property
    def lst(self):
        return self._allergen_list
