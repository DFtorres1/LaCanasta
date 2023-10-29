
class LogInWithEmailAndPasswordFailure {
  final String message;

  const LogInWithEmailAndPasswordFailure([this.message = "An Unknown error occurred."]);

  factory LogInWithEmailAndPasswordFailure.code(String code){
    switch(code) {
      case 'weak-password' :
        return const LogInWithEmailAndPasswordFailure('Por favor introduce una contraseña más fuerte.');

      case 'invalid-email' :
        return const LogInWithEmailAndPasswordFailure('Email no es válido o está mal escrito.');

      case 'email-already-in-use' :
        return const LogInWithEmailAndPasswordFailure('Ya existe una cuenta con este email.');

      case 'operation-not-allowed' :
        return const LogInWithEmailAndPasswordFailure('Operación no permitica. Contacte al soporte');

      case 'user-disabled' :
        return const LogInWithEmailAndPasswordFailure('Este usuario está deshabilitado. Contacte al soporte');

      default :
        return const LogInWithEmailAndPasswordFailure();
    }
  }
}