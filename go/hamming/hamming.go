// Package hamming provides a function for the calculating the Hamming distance
package hamming

import "errors"

/* Distance returns the Hamming distance between two DNA strands.
If the given strands are of different length it throws and error. */
func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return 0, errors.New("strands must be of the same length")

	}
	count := 0
	for i := 0; i < len(a); i++ {
		if a[i] != b[i] {
			count++
		}
	}
	return count, nil

}
