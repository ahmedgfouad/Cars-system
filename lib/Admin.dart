import 'dart:io';
import 'package:car_system/Car.dart';
import 'package:car_system/Database.dart';
class Admin   {

  void buying() {
    Car a = buy_and_seal_conversation();
    if(a.model < 2005)
      print("sory sir we don't buy car befor 2005");
    else
      print('ok sir, come to her to seal your car , we will buy your car ');

  }


  void sealing() {
    int conunt=0;
    Car a = buy_and_seal_conversation();
    print("Enter your payment : ");
    a.paymentOfCar=stdin.readLineSync()!;
    if (a.name == 'Range Rover ' || a.name=='Ferrari')
     {
       print('sorry sir, We do not own these cars');
        conunt++;
     }
       if (a.model < 2005) {
         print('sorry sir , Our models start from far away 2005');
         conunt++;
       }

       if (a.range < 100000){
         print('sory sir our car started by 100000');
          conunt++;
       }
       if (a.payment == 'installments'){
         print('sory sir We do not deal in installments');
         conunt++;
       }
       if(conunt==0)
         print('ok sir وWe will call you in two hours');

         print('''
         
There are other cars , you can see it.
Do you wante see it ?
1- yes 
2- no 
             ''');
         int n=int.parse(stdin.readLineSync()!);
         switch(n){
           case 1:
             {
               Database d=Database();
               d.infoInformationAboutHighCar();
               d.infoInformationAboutLowCar();
             }
             break;
           case 2:
             print('good luck sir ');
           break;
         }

     }



  void replacement() {
    print('welcome sir in replacement process ');
    print("ok sir , now enter Information about your car ");
    Car repseal = replacement_conversation();
    print('ok sir ,now enter what car do you want .');
    Car repbuy = replacement_conversation();

    if (repseal.model < 2005 && repbuy.model < 2005)
      print("We do not deal with these models sie ");
    else {
      if(repseal.range<repbuy.range){

        print("In this case, you will pay the difference in price");
        print('''
1- ok 
2- no 
''');
        int x = int.parse(stdin.readLineSync()!);
        if (x == 1){
          print(" The difference in price is 60 000 ");

          print('''
1- ok 
2- no 
''');
          int y = int.parse(stdin.readLineSync()!);
          if (y == 1)
            print('Great, congratulations sir, you will be contacted '
                'to bring your car to us in two days');
        }

        else
          print('Well we wish you good luck');
      }
      else{

        print("In this case, we will pay the difference in price");
        print('''
1- ok 
2- no 
''');
        int x = int.parse(stdin.readLineSync()!);
        if (x == 1){
          print(" The difference in price is 60 000 ");

          print('''
1- ok 
2- no 
''');
          int y = int.parse(stdin.readLineSync()!);
          if (y == 1)
            print('Great, congratulations sir, you will be contacted '
                'to bring your car to us in two days');
        }

        else
          print('Well we wish you good luck');
      }
    }
  }


  void rental() {
    rental_conversation();
  }

}

Car main_conversation (){
  Car c=Car();
  print('welcome sir in buying process ');
  print('Enter name of car :');
  c.nameOfCar=stdin.readLineSync()!;
  print('Enter the color of the car :');
  c.colorOfCar=stdin.readLineSync()!;
  print('Enter model of the car :');
  c.modelOfCar=int.parse(stdin.readLineSync()!);

  return c;
}

Car buy_and_seal_conversation(){
  Car c=main_conversation();
  print('Enter your range of money :');
  c.rangeOfCar=double.parse(stdin.readLineSync()!);
  return c;
}

Car replacement_conversation() {
  Car c=main_conversation();
  return c;
}

void rental_conversation(){
    print('''
welcome sir in rental process.
price of angel car in one day : 800 pound 
price of transportation car in one day : 300 pound 

If these conditions are suitable for you, write "ok" 

Enter your answer :
''');
    String answer =stdin.readLineSync()!;
    if(answer=='ok'){
      print('''
Great!
Now , what type do you want ?
1- angel car 
2- transportation
''');
      int num=int.parse(stdin.readLineSync()!);
      switch(num)
      {
        case 1:
          {
            conversation_for_rental(500);
          }
          break;
        case 2:
          {
            conversation_for_rental(300);
          }
          break;
      }

    }
    else
      print("we wish you good luck");

 }

void conversation_for_rental(int money ){
  int m =money;
  print("You write on yourself a paper from the car before receiving it,"
      " if the car is returned as you took it, you will take that paper ");
  print("If you deal write 'ok' : ");
  String answer =stdin.readLineSync()!;
  if(answer=='ok'){
    print("Enter name of car:");
    String namecar=stdin.readLineSync()!;
    print("Enter model of car: ");
    int model=int.parse(stdin.readLineSync()!);
    print('Enter color of car :');
    String colorcar=stdin.readLineSync()!;
    print("Enter How many days do you want the car :");
    double days=double.parse(stdin.readLineSync()!);
    double money =days* m ;
    if (namecar == 'Range Rover ' ||namecar=='Ferrari')
      print('sorry sir, We do not own these cars');
    if (model < 2005)
      print('sorry sir , Our models start from far away 2005');
    print('''
The total coast = $money .

what about you ? ok!
Enter 'ok ' if every thing is ok .
''');
    String answer=stdin.readLineSync()!;
    if(answer=='ok')
      print("Great , now you can to pay and receve your car ");
    else
      print('good luck ');
  }
  else
    print('good luck ');
}
