import 'dart:io';
import 'package:car_system/Admin.dart';

class User {
  String ?_name;
  String ?_phone;

  set nam(String name)=>_name=name;
  String get name=>_name!;

  set phone(String phone)=>_phone=phone;
  String get phone=>_phone!;

  void options(){
    print('''What type of operation do you want ?
1- buying process.
2- sale process.
3- replacement process.
4- rental process.
     ''');
    int num_of_process =int.parse(stdin.readLineSync()!);
    switch(num_of_process)
    {
      case 1:
        {
          Admin a=Admin();
         a.sealing();
        }break;
      case 2:
        {
          Admin a=Admin();
          a.buying();
        }break;
      case 3:
        {
          Admin a=Admin();
          a.replacement();

        }break;
      case 4 :
        {
          Admin a=Admin();
          a.rental();
        }break;
    }

  }

}


