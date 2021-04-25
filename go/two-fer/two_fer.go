// Package twofer provides a function for the classical two-fer problem.
package twofer

/* ShareWith returns the two-fer string for a given input 'name'.
If the function has a non-empty 'name' argument, it returns "One for {name}, one for me."
If the input is empty, it returns "One for you, one for me."
*/
func ShareWith(name string) string {
	if len(name) != 0 {
		return "One for " + name + ", one for me."
	}
	return "One for you, one for me."
}
