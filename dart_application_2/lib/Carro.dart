import 'package:dart_application_2/Vehiculo.dart';

class Carro extends Vehiculo{
  double TarifaDia = 600;

  Carro({placa, color, modelo, capacidad}) : super(placa: placa, color: color, modelo: modelo, capacidad: capacidad);

  void calcularValorAlquiler(int dias){
    double valor = dias * TarifaDia;
    print("El valor del alquiler es: $valor");
  }
}