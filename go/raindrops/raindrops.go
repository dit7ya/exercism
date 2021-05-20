// Package raindrops provides a function for the calculating the classical PlingPlong or Raindrop problem
package raindrops

import "strconv"

// Convert returns the raindrop string for a given input n.
func Convert(n int) string {
	noise := ""
	if n%3 == 0 {
		noise += "Pling"
	}

	if n%5 == 0 {
		noise += "Plang"
	}

	if n%7 == 0 {
		noise += "Plong"
	}
	if noise == "" {
		return strconv.Itoa(n)
	}
	return noise
}
