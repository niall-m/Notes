// O(n^2) Time | O(n) Space
function isPalindrome(string) {
  let reversed = "";
  for (let i = string.length - 1; i >= 0; i--) {
    reversed += string[i];
  }
  return string === reversed;
}
