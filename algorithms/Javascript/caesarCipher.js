// O(n) Time | O(n) Space
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