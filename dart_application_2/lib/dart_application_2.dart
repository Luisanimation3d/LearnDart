import 'dart:io';
import 'package:dart_application_2/Carro.dart';
import 'package:dart_application_2/Motocicleta.dart';

void main (List<String> args){
  int? option = 1;
  Map<String, dynamic> lista = {};
  while(option != 3) {

    print("Seleccione una opción:\n1. Motocicleta\n2. Carro\n3. Salir");
    option = int.parse(stdin.readLineSync()!);
    switch(option){
      case 1:{
        print("Ingrese la placa:");
        String? placa = stdin.readLineSync();
        print("Ingrese el color:");
        String? color = stdin.readLineSync();
        print("Ingrese el modelo:");
        int? modelo = int.parse(stdin.readLineSync()!);
        print("Ingrese la capacidad:");
        int? capacidad = int.parse(stdin.readLineSync()!);
        print("Ingrese los días de alquiler:");
        int? dias = int.parse(stdin.readLineSync()!);
        Motocicleta moto = Motocicleta(placa: placa, color: color, modelo: modelo, capacidad: capacidad);
        moto.registrar(lista);
        moto.calcularValorAlquiler(dias);
        break;
      }
      case 2:{
        print("Ingrese la placa:");
        String? placa = stdin.readLineSync();
        print("Ingrese el color:");
        String? color = stdin.readLineSync();
        print("Ingrese el modelo:");
        int? modelo = int.parse(stdin.readLineSync()!);
        print("Ingrese la capacidad:");
        int? capacidad = int.parse(stdin.readLineSync()!);
        print("Ingrese los días de alquiler:");
        int? dias = int.parse(stdin.readLineSync()!);
        Carro carro = Carro(placa: placa, color: color, modelo: modelo, capacidad: capacidad);
        carro.registrar(lista);
        carro.calcularValorAlquiler(dias);
        break;
      }
      case 3:{
        print("Gracias por usar el sistema");
        break;
      }
      default:{
        print("Opción no válida");
        break;
      }
    }

  }
}