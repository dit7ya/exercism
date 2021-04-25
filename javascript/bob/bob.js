export const hey = (message) => {
  let msg = message.trim();

  if (msg === null || msg === "") {
    return "Fine. Be that way!";
  }
  if (msg.endsWith("?")) {
    if (isUpperCase(msg)) {
      return "Calm down, I know what I'm doing!";
    }
    return "Sure.";
  }
  if (isUpperCase(msg)) {
    return "Whoa, chill out!";
  }
  return "Whatever.";
};

function isUpperCase(str) {
  return str != str.toLowerCase() && str == str.toUpperCase();
}
