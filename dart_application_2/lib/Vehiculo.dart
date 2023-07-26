class Vehiculo{
  String? placa;
  String? color;
  int? modelo;
  int? capacidad;

  Vehiculo({this.placa, this.color, this.modelo, this.capacidad});

  void registrar(Map<String, dynamic> lista){
    lista["${placa}"] = {
      "placa": placa,
      "color": color,
      "modelo": modelo,
      "capacidad": capacidad,
    };
    print("Vehículo registrado");
  }

}