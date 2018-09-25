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

// O(n) Time | O(n) Space
// Recursive
function isPalindrome3(string, i = 0) {
  const j = string.length - 1 - i;
  return i >= j ? true : string[i] === string[j] && isPalindrome3(string, i + 1);
  // do the first and last letters match, and is everything in between a palindrome as well?
}

// O(n) Time | O(1) Space
function isPalindrome4(string) {
  let startIdx = 0;
  let endIdx = string.length - 1;
  while (startIdx < endIdx) {
    if (string[startIdx] !== string[endIdx]) return false;
    startIdx++;
    endIdx--;
  }
  return true;
}
