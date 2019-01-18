import re
def word_count(phrase):
    reg = r'([a-z0-9\']+)'
    words = re.findall(reg, phrase.lower())
    words = [word[1:-1] if word[0] == '\'' and word[-1] == '\'' else word for word in words]
    d = {}
    for word in words:
        d[word] = words.count(word)

    return d
