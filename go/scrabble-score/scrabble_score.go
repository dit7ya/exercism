// Package scrabble provides a function for calculating scrabble scores
package scrabble

import (
	s "strings"
)

var scoreLetter = map[string]int{"AEIOULNRST": 1, "DG": 2, "BCMP": 3, "FHVWY": 4, "K": 5, "JX": 8, "QZ": 10}

// Score returns the scrabble score for the given input string
func Score(word string) int {
	total := 0
	for i := 0; i < len(word); i++ {
		upperLetter := s.ToUpper(string(word[i]))
		for group, score := range scoreLetter {
			if s.Contains(group, upperLetter) {
				total += score
				break
			}
		}
	}
	return total
}
