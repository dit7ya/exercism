class HighScores(object):
    def __init__(self, scores):
        self.scores = scores

    def latest(self):
        return self.scores[-1]

    def personal_best(self):
        return max(self.scores)

    def personal_top(self):
        return sorted(self.scores, reverse=True)[:3]

    def report(self):
        l = self.latest()
        p = self.personal_best()
        diff = p - l
        if l == p:
            return "Your latest score was {0}. That's your personal best!".format(l)
        else:
            return "Your latest score was {0}. That's {1} short of your personal best!".format(
                l, diff
            )
