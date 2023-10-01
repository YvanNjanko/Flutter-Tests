import 'package:appli/models/social_networks.dart';
import 'package:appli/repository/socialNetwork_repository.dart';

class HelpViewModel {
  SocialNetworkRepository repository;

  HelpViewModel(SocialNetworkRepository Srepo) : repository = Srepo;

  List<SocialNetwork> getAllSocialNetwork() {
    return repository.fetchSocialNetworkFromData();
  }
}
