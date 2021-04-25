object ScrabbleScore {

    fun scoreLetter(c: Char): Int {
        when {
            "AEIOULNRST".contains(c) -> return 1
            "DG".contains(c) -> return 2
            "BCMP".contains(c) -> return 3
            "FHVWY".contains(c) -> return 4
            "K".contains(c) -> return 5
            "JX".contains(c) -> return 8
            else -> return 10
        }
    }

    fun scoreWord(word: String): Int {
        if (word.length == 0) {
            return 0
        }
        return word.toUpperCase().map { c -> scoreLetter(c) }.reduce { x, y -> x + y }
    }
}
