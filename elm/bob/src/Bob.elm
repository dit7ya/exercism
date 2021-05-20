module Bob exposing (hey)

import String exposing (endsWith, isEmpty, right, toLower, toUpper, trim)


isStringUpper : String -> Bool
isStringUpper string =
    string == toUpper string && string /= toLower string


hey : String -> String
hey remark =
    let
        trimmedRemark =
            trim remark
    in
    if isEmpty trimmedRemark then
        "Fine. Be that way!"

    else if endsWith "?" trimmedRemark && isStringUpper trimmedRemark then
        "Calm down, I know what I'm doing!"

    else if "?" == right 1 trimmedRemark then
        "Sure."

    else if isStringUpper trimmedRemark then
        "Whoa, chill out!"

    else
        "Whatever."
