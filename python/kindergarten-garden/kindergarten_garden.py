class Garden(object):
    _plants_dict = {'V': 'Violets', 'R': 'Radishes', 'C': 'Clover', 'G': 'Grass'}
    def __init__(self, diagram, students= "Alice  Bob  Charlie  David  Eve  Fred  Ginny  Harriet  Ileana  Joseph  Kincaid  Larry".split()):
        self.diagram = diagram.split()
        self.students = sorted(students)
        self._plants = {}
        for idx in range(len(self.students)):
            self._plants[self.students[idx]] = self.diagram[0][idx*2:idx*2 + 2] + self.diagram[1][idx*2:idx*2 + 2]
    def plants(self, student):
        plants = [self._plants_dict[i] for i in self._plants[student]]
        return plants
