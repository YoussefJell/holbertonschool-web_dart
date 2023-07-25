greetUser() async {
  try {
  return 'hello ${json.decode(await fetchUserData())['username']}';
  } catch (err) {
    print('error caught: $err');
  }
}
loginUser() async {
 try {
  if (await checkCredentials()) {
    return await greetUser();
  } else {
    return 'Wrong credentials';
  }
} catch (err) {
    print('error caught: $err');
  }
}
