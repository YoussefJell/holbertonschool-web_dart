calculateTotal() async {
    try {
        double p = 0;

        Map<String, dynamic> userData = json.decode(await fetchUserData());
        String data = userData['id'];
        List<dynamic> userOrder = json.decode(await fetchUserOrders(data));
        for (int i = 0; i < userOrder.length; i++) {
            p += json.decode(await fetchProductPrice(userOrder[i]));
        }
        return p;
    } catch (err) {
        print('error caught: $err');
        return -1;
    }
}
