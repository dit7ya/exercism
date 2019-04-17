def hey(phrase):

    phrase = phrase.strip()

    if not phrase or phrase.isspace():
        return 'Fine. Be that way!'
    elif phrase[-1] == '?':
        if phrase.isupper():
            return 'Calm down, I know what I\'m doing!'
        else:
            return 'Sure.'
    elif phrase.isupper():
        return 'Whoa, chill out!'
    else:
        return 'Whatever.'

