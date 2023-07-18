void main(List<String> args) {
  assert(args.length > 0);
  var n = int.parse(args[0]);
  if (n == 0) {
    print("${n} is zero");
    return;
  }
  var positiveOrNegative = n > 0 ? 'positive' : 'negative';
  print("${n} is ${positiveOrNegative}");
}
