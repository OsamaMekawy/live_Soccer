

abstract class AppStates{}

class AppInitialState extends AppStates{}

class ChangeBottomNavState extends AppStates{}

class AppLodingDataState extends AppStates{}

class AppGetDataSuccsesState extends AppStates{}

class AppGetDataErrorState extends AppStates{
  final String Error;
  AppGetDataErrorState(this.Error);
}

class AppGetCategoriesSuccsesState extends AppStates{}
class AppGetCategoriesErrorState extends AppStates{
  final String Error;
  AppGetCategoriesErrorState(this.Error);
}

class AppChangeFavouritesState extends AppStates{}


class AppChangeFavouritesErrorState extends AppStates{
  final String Error;
  AppChangeFavouritesErrorState(this.Error);
}
class AppChangeCartsState extends AppStates{}


class AppChangeCartsErrorState extends AppStates{
  final String Error;
  AppChangeCartsErrorState(this.Error);
}


class AppLodingGetFavoritesState extends AppStates{}

class AppGetFavoritesSuccsesState extends AppStates{}
class AppGetFavoritesErrorState extends AppStates{
  final String Error;
  AppGetFavoritesErrorState(this.Error);
}

class AppLodingGetCartsState extends AppStates{}

class AppGetCartsSuccsesState extends AppStates{}
class AppGetCartsErrorState extends AppStates{
  final String Error;
  AppGetCartsErrorState(this.Error);
}

class AppLodingGetProfileState extends AppStates{}


class AppGetProfileErrorState extends AppStates{
  final String Error;
  AppGetProfileErrorState(this.Error);
}


class AppLodingUpdateProfileState extends AppStates{}


class AppUpdateProfileErrorState extends AppStates{
  final String Error;
  AppUpdateProfileErrorState(this.Error);
}


class PlayerLodingDataState extends AppStates{}

class PlayerGetDataSuccsesState extends AppStates{}

class PlayerGetDataErrorState extends AppStates{
  final String Error;
  PlayerGetDataErrorState(this.Error);
}


class TeamsLodingDataState extends AppStates{}

class TeamsGetDataSuccsesState extends AppStates{}

class TeamsGetDataErrorState extends AppStates{
  final String Error;
  TeamsGetDataErrorState(this.Error);
}


class FixtureLodingDataState extends AppStates{}

class FixtureGetDataSuccsesState extends AppStates{}

class FixtureGetDataErrorState extends AppStates{
  final String Error;
  FixtureGetDataErrorState(this.Error);
}


class StandingsLodingDataState extends AppStates{}

class StandingsGetDataSuccsesState extends AppStates{}

class StandingsGetDataErrorState extends AppStates{
  final String Error;
  StandingsGetDataErrorState(this.Error);
}


class RegisterLodingState extends AppStates{}

class RegisterGetDataSuccsesState extends AppStates{}

class RegisterGetDataErrorState extends AppStates{
  final String Error;
  RegisterGetDataErrorState(this.Error);
}



class AppChangeAppMoodState extends AppStates{}

