import 'dart:io';

main(){

  double? firstNumber,secondNumber,result;
  String? operation;



  print("*****Dart Calculator*****");

  print("Enter First Number : ");
  while(firstNumber==null){

    try{
      firstNumber = double.parse(stdin.readLineSync()!);
    }catch(error){
      print("Invalid Number,Try Again");
    }

  }
  
  print("Enter Second Number : ");

  while(secondNumber==null){

    try{
      secondNumber = double.parse(stdin.readLineSync()!);
    }catch(error){
      print("Invalid Number,Try Again");
    }

  }

  while (true) {
    print("Select Operation (+, -, *, /): ");
    operation = stdin.readLineSync();

    if (operation == "+" || operation == "-" || operation == "*" || operation == "/") {
      break;
    } else {
      print("Error: Invalid operation. Please try again.");
    }
  }
    
  

  switch(operation){
    case "+" : result = firstNumber+secondNumber;break;
    case "-" : result = firstNumber-secondNumber;break;
    case "*" : result = firstNumber*secondNumber;break;
    case "/" : result = firstNumber/secondNumber;break;
  }

  print("$firstNumber $operation $secondNumber = $result");
  
  
  

}