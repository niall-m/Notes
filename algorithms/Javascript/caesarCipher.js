// O(n) Time | O(n) Space
// Using UTF-16 code units
function caesarCipher(string, key) {
  const cipheredChars = [];
  const newKey = key % 26;
  for (const letter of string) {
    cipheredChars.push(findNewLetter(letter, newKey));
  }
  return cipheredChars.join("");
}

function findNewLetter(letter, key) {
  const charIdx = letter.charCodeAt() - "a".charCodeAt();
  const newCharIdx = (charIdx + key) % 26;
  return String.fromCharCode(newCharIdx + "a".charCodeAt());
}

// O(n) Time | O(n) Space
// Using Alphabet
function caesarCipher2(string, key) {
  const cipheredChars = [];
  const newKey = key % 26;
  const alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  for (const letter of string) {
    const newLetter = (alphabet.indexOf(letter) + key) % alphabet.length;
    cipheredChars.push(alphabet[newLetter]);
  }
  return cipheredChars.join("");
}
