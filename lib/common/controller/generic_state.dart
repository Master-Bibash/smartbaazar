abstract class GenericState {
  const GenericState();
}

class InitialState extends GenericState {
  const InitialState();
}

class LoadingState extends GenericState {
  const LoadingState();
}

class SucessState extends GenericState {
  const SucessState();
}

class ErrorState extends GenericState {
  final String message;
  const ErrorState(this.message);
}
