class Transcriptor {
  complement: { [nucleotide: string]: string } = {
    G: "C",
    C: "G",
    A: "U",
    T: "A",
  };

  toRna(dnaString: string): string {
    if (
      [...dnaString].filter((c) => "GCAT".includes(c)).length !=
      dnaString.length
    ) {
      throw "Invalid input DNA.";
    }

    return [...dnaString]
      .map((nucleotide) => this.complement[nucleotide])
      .join("");
  }
}

export default Transcriptor;
