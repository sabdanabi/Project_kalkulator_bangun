import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_kalkulator_bangun/Controller/LuasController.dart';


class PPTextFild extends StatelessWidget {

  final VoidCallback onBack;



  TextEditingController panjang = TextEditingController();
  TextEditingController lebar = TextEditingController();
  final LuasController controller = Get.put(LuasController());



  PPTextFild(this.onBack);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(
              'Hitung Luas Persegi Panjang',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
          ),

          Container(
            width: 350.0,
            height: 70.0,
            child: TextField(
              controller: panjang,
              style: TextStyle(fontSize: 18.0, color: Colors.black),
              decoration: InputDecoration(
                labelText: 'Panjang',
                labelStyle: TextStyle(fontSize: 16.0, color: Colors.blue),
                hintText: 'Masukan panjang',
                hintStyle: TextStyle(fontSize: 14.0, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),

          Container(
            width: 350.0,
            height: 70.0,
            margin: EdgeInsets.only(top: 20.0),
            child: TextField(
              controller: lebar,
              style: TextStyle(fontSize: 18.0, color: Colors.black),
              decoration: InputDecoration(
                labelText: 'Lebar',
                labelStyle: TextStyle(fontSize: 16.0, color: Colors.blue),
                hintText: 'Masukan lebar',
                hintStyle: TextStyle(fontSize: 14.0, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 40.0,top: 40.0,bottom: 25.0),
            child: Row(
              children: [
                Container(
                  width: 150.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      onBack();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Sesuaikan dengan nilai radius yang Anda inginkan
                      ),
                    ),
                    child: Text('Kembali'),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  width: 150.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: (){
                      controller.luasPersegiP(
                          double.parse(panjang.text), double.parse(lebar.text));
                      _showPopup(context); // Panggil _showPopup setelah perhitungan luas selesai
                    },

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Sesuaikan dengan nilai radius yang Anda inginkan
                      ),
                    ),
                    child: Text('Hitung'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Hasil dari luas Persegi Panjang dengan panjang ${panjang?.text ?? 'alas belum di masukan'} dan lebar ${lebar?.text ?? 'tinggi belum di masukan'} adalah'),
              ),
              Divider(),

              Obx( //kalo obx hanya bagian ini saja yang akan di render ulang
                    () => Text(
                    'Hasilnya adalah ${controller.hasilPP.value}cm²'
                ),
              ),

              ButtonBar(
                children: <Widget>[
                  TextButton(
                    child: Text('Tutup'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
