// O(n^2) Time | O(n) Space
function isPalindrome(string) {
  let reversed = "";
  for (let i = string.length - 1; i >= 0; i--) {
    reversed += string[i];
  }
  return string === reversed;
}

// O(n) Time | O(n) Space
function isPalindrome2(string) {
  const reversed = [];
  for (let i = string.length - 1; i >= 0; i--) {
    reversed.push(string[i]);
  }
  return string === reversed.join("");
}