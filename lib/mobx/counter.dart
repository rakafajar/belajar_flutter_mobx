import 'package:mobx/mobx.dart';
// gunakan build_runner untuk membuat class tambahan yang sulit
// build runner akan mengenerate class yang kita butuhkan
// dia akan mengenerata pada file counter.g.dart

part 'counter.g.dart';

class CounterMobx = _CounterMobx with _$CounterMobx;

abstract class _CounterMobx with Store {
  // value ini merukapan observable, kondisi yang akan dipantau nanti
  @observable
  int value = 0;

  // incerement dan decrement merupakan aksi pada mobx
  @action
  void incerement() {
    value++;
  }

  @action
  void decrement() {
    value--;
  }
}
