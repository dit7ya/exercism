class Garden(object):
    PLANTS = {'V': 'Violets', 'R': 'Radishes', 'C': 'Clover', 'G': 'Grass'}
    DEFAULT_STUDENTS = "Alice  Bob  Charlie  David  Eve  Fred  Ginny  Harriet  Ileana  Joseph  Kincaid  Larry".split()
    def __init__(self, diagram, students = DEFAULT_STUDENTS):
        self.diagram = diagram.split()
        self.students = sorted(students)
        self._plants = {}
        for idx, name in enumerate(self.students):
            self._plants[name] = self.diagram[0][idx*2:idx*2 + 2] + self.diagram[1][idx*2:idx*2 + 2]
    def plants(self, student):
        return [self.PLANTS[i] for i in self._plants[student]]
