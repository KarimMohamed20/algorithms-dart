var primes = [
  2,
  3,
  5,
  7,
  11,
  13,
  17,
  19,
  23,
  29,
  31,
  37,
  41,
  43,
  47,
  53,
  59,
  61,
  67,
  71,
  73,
  79,
  83,
  89,
  97
];
void main() {
  var target = 58;
  binarySearch(target, min: 0, max: primes.length - 1);
}
binarySearch(target, {min, max}) {
  var guess = ((min + max) ~/ 2);
  if (max > min) {
    print("Not Found");
    return;
  }
  if (primes[guess] == target) {
    print("Index of number($target): $guess");
    print("Found it!");
  } else if (primes[guess] < target) {
    var newMin = guess + 1;
    binarySearch(target, min: newMin, max: max);
  } else {
    var newMax = guess - 1;
    binarySearch(target, min: min, max: newMax);
  }
}
