import 'package:car_system/Car.dart';

class Database{
  Car c1=Car();
  Car c2=Car();
  Car c3=Car();
   Car c4=Car();
  Car c5=Car();
  Car c6=Car();


  void infoInformationAboutHighCar(){
    print('''
Welcome sir in high car .
These are the cars we have right now in this department  : 
        ''');

    c1.nameOfCar="Mar";
    c1.colorOfCar='red';
    c1.modelOfCar=2022;
    c1.rangeOfCar=1200000;
    show(c1.name!, c1.colors!, c1.model, c1.range);


    c2.nameOfCar="bmw";
    c2.colorOfCar='red';
    c2.modelOfCar=2020;
    c2.rangeOfCar=500000;
    show(c2.name!, c2.colors!, c2.model, c2.range);

    Car c3=Car();
    c3.nameOfCar="toyota";
    c3.colorOfCar='green';
    c3.modelOfCar=2020;
    c3.rangeOfCar=500000;
    show(c3.name!, c3.colors!, c3.model, c3.range);

  }
  void infoInformationAboutLowCar(){
    print('''
Welcome sir in high car .
These are the cars we have right now in this department  : 
        ''');

    c4.nameOfCar="honda";
    c4.colorOfCar='red';
    c4.modelOfCar=2015;
    c4.rangeOfCar=200000;
    show(c4.name!, c4.colors!, c4.model, c4.range);

    c5.nameOfCar="byd";
    c5.colorOfCar='red';
    c5.modelOfCar=2013;
    c5.rangeOfCar=100000;
    show(c5.name!, c5.colors!, c5.model, c5.range);


    c6.nameOfCar="toyota";
    c6.colorOfCar='green';
    c6.modelOfCar=2010;
    c6.rangeOfCar=120000;
    show(c6.name!, c6.colors!, c6.model, c6.range);
  }
  void info(){
    List<Car> cars=[c1,c2,c3,c4,c5,c6];
  }


}
void show (String n,String c, int m, double r){
  print('The name of car : $n');
  print('The color of $n is : $c');
  print('The model of $n is : $m');
  print('The money of $n is : $r ');
  print('-----------------------------------');
}
