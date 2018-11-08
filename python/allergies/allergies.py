class Allergies(object):

    def __init__(self, score):
        self.score = score%256
        self.items_dict = {'eggs':1, 'peanuts':2, 'shellfish': 4, 'strawberries': 8, 'tomatoes': 16, 'chocolate': 32, 'pollen': 64, 'cats': 128}

    def is_allergic_to(self, item): 
        if self.score & self.items_dict[item] == self.items_dict[item]:
            return True
        else:
            return False
        
    @property
    def lst(self):
        list = []
        for key in self.items_dict.keys():
            if self.is_allergic_to(key):
                list.append(key)
        return list