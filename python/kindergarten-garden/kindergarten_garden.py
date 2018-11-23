class Garden(object):
    def __init__(self, diagram, students= "Alice  Bob  Charlie  David  Eve  Fred  Ginny  Harriet  Ileana  Joseph  Kincaid  Larry".split()):
        self.diagram = diagram
        self.students = students
        self._plants = {}
        self._plants_dict = {'V': 'Violets', 'R': 'Radishes', 'C': 'Clover', 'G': 'Grass'}
        self._rows = diagram.split()
        for idx in range(len(self.students)):
            self._plants[self.students[idx]] = self._rows[0][idx*2:idx*2 + 2] + self._rows[1][idx*2:idx*2 + 2]
    def plants(self, student):
        plants = []
        plants_short = self._plants[student]
        for i in plants_short:
            plants.append(self._plants_dict[i])

        return plants
