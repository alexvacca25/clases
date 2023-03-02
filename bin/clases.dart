void main(List<String> arguments) {
  //print(valorMax(5, 4));
  //print(comprar("articulo", 10, true));
  /*
  print(comprar2("Camisa"));
  print(comprar2("Jean", 10));
  print(comprar2("Jean", -10, true));
  print(comprar2());*/

  /*
  print(comprar3("camisa"));
  print(comprar3("Zapatos", comprar: true));
  print(comprar3("Zapatos", cantidad: 10));
  print(comprar3("Zapatos", comprar: true, cantidad: 10));
*/
/*
  print(sumar(2, 3));
  mostrarAnonima([
    1,
    "Letras",
    true,
  ]);

  print(sumar2(5, 5));
  */

}



var sumar = (int a, int b) {
  return a + b;
};

void mostrarAnonima(List<dynamic> lista) {
  var i = 1;
  lista.forEach((item) {
    print("Item $i:  $item");
    i++;
  });
}

var sumar2 = (int a, int b) => a + b;


//Funciones

int valorMax(int n1, int n2) {
  if (n1 > n2) return n1;
  if (n1 < n2) return n2;

  return 0;
}

String comprar(String articulo, int cantidad, bool comprar) {
  String mensaje = "No Hay Compra";

  if (comprar) {
    mensaje = "Compra: $cantidad  ${articulo.toUpperCase()}";
  }

  return mensaje;
}

String comprar2([var articulo, var cantidad, var comprar]) {
  var mensaje = "";
  if (cantidad == 0) {
    mensaje = "No Hay Cantidades";
  }
  if (comprar == false) {
    mensaje = "no se confirmo la compra";
  }

  if (comprar && cantidad != 0) {
    mensaje = "Compra: $cantidad Aritculo: ${articulo.toUpperCase()}";
  }

  return mensaje;
}

//@required
//(a>b)? postivo: negativo
//a??b
//a!

String comprar3(String articulo, {var comprar, var cantidad}) {
  var mensaje = "";
  if (cantidad == null) mensaje = "Sin Cantidad";
  if (comprar == null) mensaje = "Sin Confirmacion";
  if (comprar != null && cantidad != null) {
    mensaje = "Compra: $cantidad Aritculo: ${articulo.toUpperCase()}";
  }

  return mensaje;
}
