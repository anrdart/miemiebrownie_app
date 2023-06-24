import 'package:flutter/material.dart';
import '../service/pegawai_service.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';
import '../styles/colors.dart';

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiUpdateForm({Key? key, required this.pegawai}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PegawaiUpdateFormState createState() => _PegawaiUpdateFormState();
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPegawaiCtrl = TextEditingController();
  final _jabatanCtrl = TextEditingController();
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  Future<Pegawai> getData() async {
    Pegawai data = await PegawaiService().getById(widget.pegawai.id.toString());
    setState(() {
      _namaPegawaiCtrl.text = data.namaPegawai;
      _jabatanCtrl.text = data.jabatan;
      _usernameCtrl.text = data.username;
      _passwordCtrl.text = data.password;
    });
    return data;
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: mainColor, title: const Text("Ubah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPegawai(),
              _fieldJabatan(),
              _fieldUsername(),
              _fieldPassword(),
              const SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  Widget _fieldNamaPegawai() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      controller: _namaPegawaiCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Nama Pegawai tidak boleh kosong';
        }
        return null;
      },
    );
  }

  Widget _fieldJabatan() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Jabatan"),
      controller: _jabatanCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Jabatan tidak boleh kosong';
        }
        return null;
      },
    );
  }

  Widget _fieldUsername() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Username"),
      controller: _usernameCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Username tidak boleh kosong';
        }
        return null;
      },
    );
  }

  Widget _fieldPassword() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Password"),
      controller: _passwordCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password tidak boleh kosong';
        }
        return null;
      },
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () async {
        if (_formKey.currentState!.validate()) {
          Pegawai pegawai = Pegawai(
            namaPegawai: _namaPegawaiCtrl.text,
            jabatan: _jabatanCtrl.text,
            username: _usernameCtrl.text,
            password: _passwordCtrl.text,
          );
          String id = widget.pegawai.id.toString();
          await PegawaiService().ubah(pegawai, id).then((value) {
            Navigator.pop(context);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => PegawaiDetail(pegawai: value),
              ),
            );
          });
        }
      },
      child: const Text("Simpan Perubahan"),
    );
  }
}
