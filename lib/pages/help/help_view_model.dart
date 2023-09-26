import 'package:appli/models/social_networks.dart';
import 'package:appli/repository/socialNetwork_repository.dart';

class HelpViewModel {
  SocialNetworkRepository repository = SocialNetworkRepository();

  List<SocialNetwork> getAllSocialNetwork() {
    return repository.fetchSocialNetworkFromData();
  }
}
