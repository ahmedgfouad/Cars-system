  class Car {
  String? _name;
  String? _color;
  int? _model;
  double? _rangeMoneyOfCar;
  String? _payment;

   set nameOfCar (String name)=>_name=name;
   String?  get name =>_name;

  set colorOfCar (String color)=>_color=color;
  String? get colors=>_color;

  set modelOfCar (int model)=>_model=model;
  int  get model =>_model!;

  set rangeOfCar (double money)=>_rangeMoneyOfCar=money;
  double get range =>_rangeMoneyOfCar!;

  set paymentOfCar (String payment )=>_payment=payment;
  String? get payment =>_payment;


}

