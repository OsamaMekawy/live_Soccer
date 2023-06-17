

abstract class RegisterStates{}

class RegisterChangePasswordVisibiltyState extends RegisterStates{}

class RegisterInitialState extends RegisterStates{}

class RegisterLodiningState extends RegisterStates{}

class RegisterSuccessState extends RegisterStates{

}

class ShopRegisterErorrState extends RegisterStates{
  final String erorr;

  ShopRegisterErorrState(this.erorr);

}