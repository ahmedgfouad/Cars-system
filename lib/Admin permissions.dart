
import 'package:car_system/Admin.dart';
import 'package:car_system/Database.dart';

class AdminPermissions extends Admin{
  String ?_name;
  String ?_color;
  int ?_model;
  double ?_price;

  AdminPermissions(this._name,this._color,this._model, this._price);

  void addCar(){
   show(_name!, _color!, _model!, _price!);
    print('$_name was added to the system');
  }
  void removeCar(){
    print('''
$_name
$_color
$_price
$_model
was removed to the system.

''');

  }
}
