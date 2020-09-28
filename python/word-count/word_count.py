import re
from collections import Counter


def word_count(phrase):
    reg = r"([a-z0-9\']+)"
    words = re.findall(reg, phrase.lower())
    words = map(lambda x: x.strip("'"), words)
    return Counter(words)
