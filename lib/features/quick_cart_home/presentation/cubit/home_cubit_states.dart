class HomeCubitStates {}

class InitialState extends HomeCubitStates {}

class NavBarViewState extends HomeCubitStates {}

class CarouselSliderState extends HomeCubitStates {}

class ProductLoading extends HomeCubitStates {}

class ProductLoaded extends HomeCubitStates {}

class ProductError extends HomeCubitStates {
  final String message;

  ProductError(this.message);
}
