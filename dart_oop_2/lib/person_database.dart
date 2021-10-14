class PersonDatabase {
  String name = 'no name';
  String status = 'no status';

  void getData() {
    name = 'adit';
    status = 'mahasiswa';
    print('get data done!');
  }

  Future<List<String>> getDataAsync() async {
    print('get data1 on process');
    await Future.delayed(Duration(seconds: 3));
    name = 'adit';
    status = 'mahasiswa';
    print('get data1 done!');
    return [name, status];
  }

  Future<List<String>> getDataAsync2() async {
    print('get data2 on process');
    await Future.delayed(Duration(seconds: 5));
    name = 'rudi';
    status = 'mahasiswa';
    print('get data2 done!');
    return [name, status];
  }
}
