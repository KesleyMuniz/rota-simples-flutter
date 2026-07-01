abstract class ConnectivityService {
  Stream<bool> get onConnectivityChanged;
  Future<bool> isConnected();
}
