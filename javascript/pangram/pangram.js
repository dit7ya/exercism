const alphabetList = [..."qwertyuiopasdfghjklzxcvbnm"];

export function isPangram(inp) {
  const checkInclusion = (ltr) => inp.toLowerCase().includes(ltr);
  return alphabetList.every(checkInclusion);
}
