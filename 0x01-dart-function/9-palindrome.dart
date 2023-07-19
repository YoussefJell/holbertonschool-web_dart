bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  String lowerString = s.toLowerCase();
  String reversedString = lowerString.toLowerCase().split('').reversed.join('');

  return lowerString == reversedString;
}
