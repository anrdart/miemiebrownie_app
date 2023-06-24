class Pegawai {
  String? id;
  String namaPegawai;
  String jabatan;
  String username;
  String password;

  Pegawai({
    this.id,
    required this.namaPegawai,
    required this.jabatan,
    required this.username,
    required this.password,
  });

  factory Pegawai.fromJson(Map<String, dynamic> json) {
    return Pegawai(
      id: json["id"],
      namaPegawai: json["nm_pegawai"],
      jabatan: json["jabatan"],
      username: json["username"],
      password: json["password"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "nm_pegawai": namaPegawai,
      "jabatan": jabatan,
      "username": username,
      "password": password,
    };
  }
}
