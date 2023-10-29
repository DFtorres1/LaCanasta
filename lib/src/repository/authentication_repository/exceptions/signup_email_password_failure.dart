
class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message = "An Unknown error occurred."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch(code) {
      case 'weak-password' :
        return const SignUpWithEmailAndPasswordFailure('Por favor introduce una contraseña más fuerte.');

      case 'invalid-email' :
        return const SignUpWithEmailAndPasswordFailure('Email no es válido o está mal escrito.');

      case 'email-already-in-use' :
        return const SignUpWithEmailAndPasswordFailure('Ya existe una cuenta con este email.');

      case 'operation-not-allowed' :
        return const SignUpWithEmailAndPasswordFailure('Operación no permitica. Contacte al soporte');

      case 'user-disabled' :
        return const SignUpWithEmailAndPasswordFailure('Este usuario está deshabilitado. Contacte al soporte');

      default :
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}