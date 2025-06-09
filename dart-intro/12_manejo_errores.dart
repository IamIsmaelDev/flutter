
void main() async{

  print('Inicio del programa');

  try {

    final value = await httpGet('https://www.google.com');
    print('éxito: $value');

  } on Exception catch (error){
    print('Tenemos la siguiente excepción: $error');
  } catch (error) {
    print('Algo terrible sucedió: $error');
  } finally {
    print('Esto se ejecuta siempre, haya error o no');
  }

  print('Fin del programa');

}

Future<String> httpGet (String url) async {
  await Future.delayed(Duration(seconds: 2));

  throw Exception('No hay parámetros en la petición a $url');
  //throw 'Error no controlado en la petición';

  //return 'Hay un valor de retorno de la petición a $url';
}