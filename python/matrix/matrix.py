class Matrix(object):
    def __init__(self, matrix_string):
        self.mat = [
            [int(i) for i in row.split()] for row in matrix_string.split("\n")
        ]  # this is the matrix as list of lists of elements

    def row(self, index):
        return self.mat[index - 1]

    def column(self, index):
        return [row[index - 1] for row in self.mat]
