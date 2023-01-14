class LoginWithEmailAndPasswordFailure {
  final String message;
  const LoginWithEmailAndPasswordFailure(
      [this.message = "An Unknown error occured."]);

  factory LoginWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const LoginWithEmailAndPasswordFailure('Please enter a stronger password.');
      case 'invalid-email':
        return const LoginWithEmailAndPasswordFailure('Email is not valid or badly formated');
      // case 'email-already-in-use':
      //   return const LoginWithEmailAndPasswordFailure('An account already exists for that email.');
      case 'operation-not-allowed':
        return const LoginWithEmailAndPasswordFailure('Operation is not allowed. Please contact support');
      case 'user-disabled':
        return const LoginWithEmailAndPasswordFailure('This user has been disabled. Please contact support for help.');
      default:
        return const LoginWithEmailAndPasswordFailure();
    }
  }
}