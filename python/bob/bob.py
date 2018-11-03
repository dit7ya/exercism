def hey(phrase):

    last_non_space_character = None
    for i in range(len(phrase)):
        if not phrase[i].isspace():
            last_non_space_character = phrase[i]

    if last_non_space_character == '?':
        if phrase.isupper():
            return 'Calm down, I know what I\'m doing!'
        else:
            return 'Sure.'

    elif phrase.isupper():
        return 'Whoa, chill out!'

    elif not phrase or phrase.isspace():
        return 'Fine. Be that way!'
    else:
        return 'Whatever.'

