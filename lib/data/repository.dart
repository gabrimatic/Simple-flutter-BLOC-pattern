class Data {
  const Data();

  static Future<List<Map<String, dynamic>>> getData() async {
    var list = List<Map<String, dynamic>>();

    for (int i = 1; i < 51; i++) {
      await Future.delayed(Duration(milliseconds: 70), () {
        list.add(<String, dynamic>{
          'id': i,
          'name': 'I\'m Soroush - $i',
          'number': i * 1024,
        });
      });
    }

    return list;
  }
}
