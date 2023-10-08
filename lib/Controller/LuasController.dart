import 'package:get/get.dart';

class LuasController extends GetxController {
  final count = 0.obs;
  increment() => count.value++;

  final hasilSegitiga = RxDouble(0.0);
  final hasilPP = RxDouble(0.0);

  luasSegitiga(double alas,double tinggi){
    hasilSegitiga.value = 0.5 * alas * tinggi;
  }

  luasPersegiP(double panjang,double lebar){
    hasilPP.value = panjang * lebar;
  }

}