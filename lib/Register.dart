import 'dart:io';
import 'package:car_system/Admin permissions.dart';
import 'package:car_system/User.dart';

class Register {
  Register(){
    print('Are you admin or user ?');
    print('''
1- Admin
2- User ''');
    int num =int.parse(stdin.readLineSync()!);
    switch(num){
      case 1 :{
        print('Enter your pas : ');
        int pas=int.parse(stdin.readLineSync()!);
        if(pas==123){
          print('''
Welcome sir .
what do you want ?
1- Add new car. 
2- remove car.

''');
          int num=int.parse(stdin.readLineSync()!);
          switch(num){
            case 1:
              {
                List adminadd=admin_x();
                AdminPermissions a=AdminPermissions(adminadd[0],adminadd[1],adminadd[2],adminadd[3]);
                a.addCar();

              }
              break;
            case 2:
              {
                List adminremove=admin_x();
                AdminPermissions a=AdminPermissions(adminremove[0],adminremove[1],adminremove[2],adminremove[3]);
                a.removeCar();
              }
              break;
          }

        }
        else
          print('wrong  , Try again  ');
      }
        break;
      case 2:
        {
          if(instruction() == 'ok'){
            print('Enter your name : ');
            String name=stdin.readLineSync()!;
            print('Enter your phone :');
            String phone =stdin.readLineSync()!;
            User u=User();
            u.nam=name;
            u.phone=phone;
            u.options();
          }
          else
            print("we wish you good luck");


        }
        break;
    }
}
}

String instruction (){
  print(''''
Welcome sir in Our Car Showroom .
We do not deal in installments.
Our car models start from 2005.
We don't own Ferraris or Range Rovers

If these conditions are suitable for you, write "ok"

Enter your answer : 
''');
  String answer=stdin.readLineSync()!;
  return answer;
}

List<Object> admin_x(){
  print("Enter name of the car :");
  String name=stdin.readLineSync()!;
  print("Enter color of the car : ");
  String color =stdin.readLineSync()!;
  print("Enter the model of the car :");
  int model=int.parse(stdin.readLineSync()!);
  print("Enter the price of the car :");
  double price =double.parse(stdin.readLineSync()!);
  /// 0->name \ 1->color \ 2->model \ 3->price
  return [name,color,model,price];
}