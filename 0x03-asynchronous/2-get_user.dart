getUser() async {
  try {
    print(await fetchUser());
  } catch (err) {
    print('error caught: $err');
  }
}
