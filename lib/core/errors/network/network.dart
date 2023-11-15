abstract class Network {
  Future<bool> get isConcted;
}

class NetworkImp implements Network {
  @override
  Future<bool> get isConcted => throw true;
}
