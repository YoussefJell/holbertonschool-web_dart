void main(List<String> args) {
  /*
  Write Your code below
   */
  assert(args.length > 0);
  assert(int.parse(args[0]) >= 80, 'The score must be bigger or equal to 80');
  print('You Passed');
}
