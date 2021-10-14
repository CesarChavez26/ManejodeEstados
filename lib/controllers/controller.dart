import 'package:get/get.dart';

class PaisesControlller extends GetxController {
  var list = [].obs;

  add(item) => list.add(item);

  remove(index) => list.removeAt(index);
}
