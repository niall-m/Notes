// O(n) Time | O(n) Space
// Using UTF-16 code units
function caesarCipher(string, key) {
  const cipheredChars = []; // result array
  const newKey = key % 26; // in case key is larger than length of alphabet, wrap around
  for (const letter of string) { // loop through each letter in string
    cipheredChars.push(findNewLetter(letter, newKey)); // push new letter to result
  }
  return cipheredChars.join(""); // join result array into a string and return
}

function findNewLetter(letter, key) {
  const charIdx = letter.charCodeAt() - "a".charCodeAt(); // subtract value of first letter in alphabet (96) from current letter
  const newCharIdx = (charIdx + key) % 26; // add key value and wrap around to front of alphabet, if necessary
  return String.fromCharCode(newCharIdx + "a".charCodeAt()); // add back the 96 and convert from UTF to string
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
