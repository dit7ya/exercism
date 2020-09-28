def abbreviate(words):

    string_list = words.split('-')      # split by hyphens
    words = [string.split() for string in string_list]  # converts the pieces of strings to words by splitting with space
    words = [item for sublist in words for item in sublist]      # flattens list

    return ''.join([word[0].upper() for word in words])
