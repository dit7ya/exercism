def slices(series, length):

    if length > len(series) or length < 1:
        raise ValueError("Wrong length.")
    else:
        return [series[idx : idx + length] for idx in range(len(series) + 1 - length)]
